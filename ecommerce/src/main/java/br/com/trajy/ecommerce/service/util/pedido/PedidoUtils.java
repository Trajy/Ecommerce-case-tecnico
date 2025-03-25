package br.com.trajy.ecommerce.service.util.pedido;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.CANCELADO;
import static java.lang.String.format;
import static java.math.BigDecimal.valueOf;
import static java.util.stream.Collectors.joining;
import static org.apache.commons.collections4.CollectionUtils.isNotEmpty;
import static org.apache.commons.collections4.IteratorUtils.find;
import static org.apache.commons.collections4.IteratorUtils.isEmpty;

import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.model.entity.Produto;
import br.com.trajy.ecommerce.model.entity.ProdutoPedido;
import br.com.trajy.ecommerce.model.projection.ProdutoPrecoProjection;
import javax.persistence.EntityNotFoundException;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

public final class PedidoUtils {

    private PedidoUtils() { }

    public static List<UUID> getProdutoIds(Pedido pedido) {
        return pedido.getProdutosPedidos().stream().map(produtoPedido -> produtoPedido.getProduto().getId()).toList();
    }

    public static void getPrecoAtualProdutos(Pedido pedido, List<ProdutoPrecoProjection> produtoPrecos) {
        handleNotFoundProdutos(pedido, produtoPrecos);
        pedido.getProdutosPedidos().forEach(produtoPedido ->
            produtoPedido.setPreco(
                find(produtoPrecos.iterator(), produtoPreco -> produtoPedido.getProduto().getId().equals(produtoPreco.getId())).getPreco()
            )
        );
    }

    public static void calcularTotalProdutosPedido(Pedido pedido) {
        pedido.setTotalProdutos(
            pedido.getProdutosPedidos().stream()
                    .map(produtoPedido -> valueOf(produtoPedido.getQuantidade()).multiply(produtoPedido.getPreco()))
                    .reduce(BigDecimal.ZERO, BigDecimal::add)
        );
    }

    public static void recalculaQuantidadeEstoqueProdutos(Pedido pedido) {
        pedido.getProdutosPedidos().forEach(produtoPedido -> {
            Produto produto = produtoPedido.getProduto();
            int estoqueRestante = produto.getQuantidadeEstoque() - produtoPedido.getQuantidade();
            if(estoqueRestante < 0) {
                CANCELADO.changeStatus(pedido);
                return;
            }
            produto.setQuantidadeEstoque(estoqueRestante);
        });
    }

    private static void handleNotFoundProdutos(Pedido pedido, List<ProdutoPrecoProjection> produtoPrecos) {
        if(isEmpty(produtoPrecos.iterator())) {
            throw new EntityNotFoundException("Nenhum produto encontrado para os ids fornecidos.");
        }
        List<Produto> produtosNaoEncontrados = pedido.getProdutosPedidos().stream().map(ProdutoPedido::getProduto)
                .filter(produto -> produtoPrecos.stream().noneMatch(produtoPreco -> produto.getId().equals(produtoPreco.getId())))
                .toList();
        if(isNotEmpty(produtosNaoEncontrados)) {
            throw new EntityNotFoundException(
                format(
                    "não encontrados produtos para os ids: %s.",
                    produtosNaoEncontrados.stream().map(produto -> produto.getId().toString()).collect(joining(", "))
                )
            );
        }
    }


}

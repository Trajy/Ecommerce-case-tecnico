package br.com.trajy.ecommerce.service.util.pedido;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.CANCELADO;
import static java.math.BigDecimal.valueOf;
import static org.apache.commons.collections4.IteratorUtils.find;

import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.model.entity.Produto;
import br.com.trajy.ecommerce.model.projection.ProdutoPrecoProjection;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

public final class PedidoUtils {

    private PedidoUtils() { }

    public static List<UUID> getProdutoIds(Pedido pedido) {
        return pedido.getProdutosPedidos().stream().map(produtoPedido -> produtoPedido.getProduto().getId()).toList();
    }

    public static void getPrecoAtualProdutos(Pedido pedido, List<ProdutoPrecoProjection> produtoPrecos) {
        pedido.getProdutosPedidos().forEach(produtoPedido ->
            produtoPedido.setPreco(
                find(produtoPrecos.iterator(), produtoPreco -> produtoPedido.getProduto().getId().equals(produtoPreco.getId())).getPreco()
            )
        );
    }

    public static void calcularTotalProdutosPedido(Pedido pedido) {
        pedido.setTotalProdutos(
            pedido.getProdutosPedidos().stream()
                    .map(produtoPedido -> valueOf(produtoPedido.getQuantidade()).multiply(produtoPedido.getProduto().getPreco()))
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


}

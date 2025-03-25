package br.com.trajy.ecommerce.service;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.CANCELADO;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PREPARACAO;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.recalculaQuantidadeEstoqueProdutos;
import static com.google.common.base.Preconditions.checkState;
import static org.apache.commons.lang3.BooleanUtils.isFalse;

import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.model.entity.ProdutoPedido;
import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import br.com.trajy.payment.service.PagamentoService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
@RequiredArgsConstructor
public class PagamentoPedidoService {

    private final PagamentoService pagamentoService;

    private final PedidoService pedidoService;

    private final ProdutoService produtoService;

    @Transactional(rollbackFor = Exception.class)
    public Pedido processar(Pagamento pagamento) {
        Pedido pedido = pedidoService.findById(pagamento.getPedidoId());
        checkIfHasEstoque(pedido);
        efetivarPagamento(pagamento, pedido);
        atualizarProdutosAposPagamento(pedido);
        PREPARACAO.changeStatus(pedido);
        return pedidoService.save(pedido);
    }

    private void checkIfHasEstoque(Pedido pedido) {
        recalculaQuantidadeEstoqueProdutos(pedido);
        if(CANCELADO.equals(pedido.getStatus())) {
            pedidoService.saveAndCommit(pedido);
            throw new IllegalStateException("Pedido cancelado, falta de itens em estoque.");
        }
    }

    private void efetivarPagamento(Pagamento pagamento, Pedido pedido) {
        PagamentoRealizado pagamentoRealizado = pagamentoService.processar(pagamento);
        checkState(pagamentoRealizado.getAprovado(), "Pagamento não aprovado.");
        pedido.setPagamento(pagamentoRealizado);
    }

    private void atualizarProdutosAposPagamento(Pedido pedido) {
        produtoService.saveAll(pedido.getProdutosPedidos().stream().map(ProdutoPedido::getProduto).toList());
    }

}

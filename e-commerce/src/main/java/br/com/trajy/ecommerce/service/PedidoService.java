package br.com.trajy.ecommerce.service;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.CANCELADO;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PENDENTE;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PREPARACAO;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.calcularTotalProdutosPedido;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.getPrecoAtualProdutos;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.getProdutoIds;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.recalculaQuantidadeEstoqueProdutos;
import static com.google.common.base.Preconditions.checkState;
import static org.apache.commons.lang3.BooleanUtils.isFalse;
import static org.apache.commons.lang3.ObjectUtils.notEqual;

import br.com.trajy.architecture.layer.service.ServiceAbstract;
import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.model.entity.ProdutoPedido;
import br.com.trajy.ecommerce.repository.PedidoRepository;
import br.com.trajy.ecommerce.service.util.pedido.PedidoUtils;
import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import br.com.trajy.payment.service.PagamentoService;
import br.com.trajy.security.service.UsuarioService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Getter
public class PedidoService extends ServiceAbstract<UUID, Pedido> {

    private final PedidoRepository repository;

    private final UsuarioService usuarioService;

    private final PagamentoService pagamentoService;

    private final ProdutoService produtoService;

    @Override
    public void beforeSave(Pedido pedido) {
        PENDENTE.changeStatus(pedido);
        getPrecoAtualProdutos(pedido, produtoService.findPrecoByIds(getProdutoIds(pedido)));
        calcularTotalProdutosPedido(pedido);
    }

    @Transactional(rollbackFor = Exception.class)
    public Pedido processar(Pagamento pagamento) {
        Pedido pedido = this.findById(pagamento.getPedidoId());
        recalculaQuantidadeEstoqueProdutos(pedido);
        processarPagamentoPedidoComEstoque(pedido, pagamento);
        return this.update(pedido);
    }

    private void processarPagamentoPedidoComEstoque(Pedido pedido, Pagamento pagamento) {
        if(CANCELADO.equals(pedido.getStatus())) {
            pedido.setSituacao("Pedido cancelado por falta de estoque.");
            return;
        }
        PagamentoRealizado pagamentoRealizado = pagamentoService.processar(pagamento);
        if(isFalse(pagamentoRealizado.getAprovado())) {
            throw new IllegalStateException("Pagamento não aprovado");
        }
        produtoService.saveAll(pedido.getProdutosPedidos().stream().map(ProdutoPedido::getProduto).toList());
        pedido.setPagamento(pagamentoRealizado);
        PREPARACAO.changeStatus(pedido);
    }

}

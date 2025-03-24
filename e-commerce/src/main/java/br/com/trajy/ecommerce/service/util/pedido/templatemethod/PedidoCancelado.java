package br.com.trajy.ecommerce.service.util.pedido.templatemethod;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PENDENTE;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PREPARACAO;

import br.com.trajy.ecommerce.model.constant.PedidoStatusType;

public class PedidoCancelado extends PedidoStatusTemplateMethod {

    @Override
    protected boolean canChangeState(PedidoStatusType previousType) {
        return PENDENTE.equals(previousType) || PREPARACAO.equals(previousType);
    }

}

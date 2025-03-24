package br.com.trajy.ecommerce.service.util.pedido.templatemethod;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PREPARACAO;

import br.com.trajy.ecommerce.model.constant.PedidoStatusType;

public class PedidoEnviado extends PedidoStatusTemplateMethod {

    @Override
    protected boolean canChangeState(PedidoStatusType previousType) {
        return PREPARACAO.equals(previousType);
    }

}

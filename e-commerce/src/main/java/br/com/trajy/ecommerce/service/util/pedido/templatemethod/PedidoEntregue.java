package br.com.trajy.ecommerce.service.util.pedido.templatemethod;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.ENVIADO;

import br.com.trajy.ecommerce.model.constant.PedidoStatusType;

public class PedidoEntregue extends PedidoStatusTemplateMethod {

    @Override
    protected boolean canChangeState(PedidoStatusType previousType) {
        return ENVIADO.equals(previousType);
    }

}

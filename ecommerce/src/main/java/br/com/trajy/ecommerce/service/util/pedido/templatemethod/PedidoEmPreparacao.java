package br.com.trajy.ecommerce.service.util.pedido.templatemethod;

import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PENDENTE;

import br.com.trajy.ecommerce.model.constant.PedidoStatusType;

public class PedidoEmPreparacao extends PedidoStatusTemplateMethod {

    @Override
    protected boolean canChangeState(PedidoStatusType previousType) {
        return PENDENTE.equals(previousType);
    }

}

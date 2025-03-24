package br.com.trajy.ecommerce.service.util.pedido.templatemethod;

import static java.util.Objects.isNull;

import br.com.trajy.ecommerce.model.constant.PedidoStatusType;

public class PedidoPendentePagamento extends PedidoStatusTemplateMethod {

    @Override
    protected boolean canChangeState(PedidoStatusType previousType) {
        return isNull(previousType);
    }

}

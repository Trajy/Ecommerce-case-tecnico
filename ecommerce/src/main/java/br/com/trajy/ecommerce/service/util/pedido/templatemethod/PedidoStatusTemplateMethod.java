package br.com.trajy.ecommerce.service.util.pedido.templatemethod;

import static java.lang.String.format;
import static java.util.Objects.nonNull;

import br.com.trajy.ecommerce.model.constant.PedidoStatusType;
import br.com.trajy.ecommerce.model.entity.Pedido;

public abstract class PedidoStatusTemplateMethod {

    protected abstract boolean canChangeState(PedidoStatusType previousType);

    public void changeStatus(Pedido pedido, PedidoStatusType newStatus) {
        if(this.canChangeState(pedido.getStatus())) {
            pedido.setStatus(newStatus);
            return;
        }
        throw new UnsupportedOperationException(
                format(
                        "Cant change state from %s to %s",
                        nonNull(pedido.getStatus()) ? pedido.getStatus().getClass().getSimpleName() : "null",
                        this.getClass().getSimpleName()
                )
        );

    }

}

package br.com.trajy.ecommerce.model.constant;

import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.service.util.pedido.templatemethod.PedidoCancelado;
import br.com.trajy.ecommerce.service.util.pedido.templatemethod.PedidoPendentePagamento;
import br.com.trajy.ecommerce.service.util.pedido.templatemethod.PedidoEmPreparacao;
import br.com.trajy.ecommerce.service.util.pedido.templatemethod.PedidoEntregue;
import br.com.trajy.ecommerce.service.util.pedido.templatemethod.PedidoEnviado;
import br.com.trajy.ecommerce.service.util.pedido.templatemethod.PedidoStatusTemplateMethod;
import lombok.SneakyThrows;

public enum PedidoStatusType {

    PENDENTE(PedidoPendentePagamento.class),
    PREPARACAO(PedidoEmPreparacao.class),
    ENVIADO(PedidoEnviado.class),
    ENTREGUE(PedidoEntregue.class),
    CANCELADO(PedidoCancelado.class);

    private final PedidoStatusTemplateMethod pedidoStatusTemplateMethod;

    @SneakyThrows
    <T extends PedidoStatusTemplateMethod> PedidoStatusType(Class<T> tClass) {
        pedidoStatusTemplateMethod = tClass.getDeclaredConstructor().newInstance();
    }

    public void changeStatus(Pedido pedido) {
        pedidoStatusTemplateMethod.changeStatus(pedido, this);
    }

}

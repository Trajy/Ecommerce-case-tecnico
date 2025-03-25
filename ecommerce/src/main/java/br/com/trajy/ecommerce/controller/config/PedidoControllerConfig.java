package br.com.trajy.ecommerce.controller.config;

import br.com.trajy.architecture.layer.controller.config.ControllerConfigAbstract;
import br.com.trajy.ecommerce.assembly.PedidoAssembly;
import br.com.trajy.ecommerce.repository.PedidoRepository;
import br.com.trajy.ecommerce.service.PagamentoPedidoService;
import br.com.trajy.ecommerce.service.PedidoService;
import br.com.trajy.payment.assembly.PagamentoAssembly;
import br.com.trajy.payment.assembly.PagamentoRealizadoAssembly;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Getter
public class PedidoControllerConfig extends ControllerConfigAbstract {

    private final PedidoService service;

    private final PagamentoPedidoService pagamentoPedidoService;

    private final PedidoAssembly assembly;

    private final PagamentoAssembly pagamentoAssembly;

    private final PagamentoRealizadoAssembly pagamentoRealizadoAssembly;

}

package br.com.trajy.ecommerce.controller.config;

import br.com.trajy.architecture.layer.controller.config.ControllerConfigAbstract;
import br.com.trajy.ecommerce.assembly.ProdutoAssembly;
import br.com.trajy.ecommerce.service.ProdutoService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Getter
public class ProdutoControllerConfig extends ControllerConfigAbstract {

    private final ProdutoService service;

    private final ProdutoAssembly assembly;

}

package br.com.trajy.security.controller.config;

import br.com.trajy.architecture.layer.controller.config.ControllerConfigAbstract;
import br.com.trajy.security.assembly.UsuarioAssembly;
import br.com.trajy.security.service.UsuarioService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.stereotype.Component;

@Component
@RequiredArgsConstructor
@Getter
public class UsuarioControllerConfig extends ControllerConfigAbstract {

    private final UsuarioService service;

    private final UsuarioAssembly assembly;

    private final AuthenticationManager authManager;


}

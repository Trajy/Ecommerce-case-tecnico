package br.com.trajy.security.controller;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.http.ResponseEntity.ok;
import static org.springframework.security.authentication.UsernamePasswordAuthenticationToken.unauthenticated;

import br.com.trajy.architecture.layer.controller.ControllerAbstract;
import br.com.trajy.security.controller.config.UsuarioControllerConfig;
import br.com.trajy.security.model.dto.AuthResponseDTO;
import br.com.trajy.security.model.dto.UsuarioDTO;
import br.com.trajy.security.model.entity.Usuario;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import javax.validation.Valid;
import java.util.UUID;

@RestController
@RequestMapping("/user")
@RequiredArgsConstructor
@Getter
public class UsuarioController extends ControllerAbstract<UUID, UsuarioDTO> {

    private final UsuarioControllerConfig config;

    @PostMapping(value = "/auth", consumes = APPLICATION_JSON_VALUE)
    public ResponseEntity<AuthResponseDTO> auth(@Valid @RequestBody UsuarioDTO dto) {
        Usuario usuario = (Usuario) config.getAuthManager()
                .authenticate(unauthenticated(dto.getEmail(), dto.getSenha())).getPrincipal();
        config.getService().getAuthUtils().createToken(usuario);
        return ok(new AuthResponseDTO(config.getService().getAuthUtils().createToken(usuario)));
    }

}

package br.com.trajy.security.service;

import br.com.trajy.architecture.layer.service.ServiceAbstract;
import br.com.trajy.security.model.constant.UserRoleType;
import br.com.trajy.security.model.entity.Usuario;
import br.com.trajy.security.repository.UsuarioRepository;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import java.util.UUID;

@Service
@Getter
@RequiredArgsConstructor
public class UsuarioService extends ServiceAbstract<UUID, Usuario> implements UserDetailsService {

    private final PasswordEncoder encoder;

    private final AuthUtils authUtils;

    private final UsuarioRepository repository;

    @Override
    public void beforeSave(Usuario usuario) {
        usuario.setSenha(encoder.encode(usuario.getPassword()));
        usuario.setRole(UserRoleType.USER);
    }

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        return repository.findByEmail(username);
    }

}

package br.com.trajy.security.model.entity;

import static java.util.List.of;
import static javax.persistence.EnumType.STRING;

import br.com.trajy.architecture.layer.data.struct.common.Identity;
import br.com.trajy.security.model.constant.UserRoleType;
import lombok.Getter;
import lombok.Setter;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.Index;
import javax.persistence.Table;
import java.util.Collection;
import java.util.UUID;

@Entity
@Table(indexes = {@Index(name = "idx_usuario_email", columnList = "email")})
@Getter
@Setter
public class Usuario extends Identity<UUID> implements UserDetails {

    @Column(nullable = false)
    private String nome;

    @Column(nullable = false, unique = true)
    private String email;

    @Column(nullable = false)
    private String senha;

    @Enumerated(STRING)
    @Column(nullable = false)
    private UserRoleType role;

    @Override
    public String getPassword() {
        return senha;
    }

    @Override
    public String getUsername() {
        return email;
    }

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        return of(new SimpleGrantedAuthority("ROLE_".concat(this.role.name())));
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

}

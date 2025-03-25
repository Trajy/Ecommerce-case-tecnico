package br.com.trajy.security.service;

import static br.com.trajy.architecture.config.ApplicationContextStatic.getBean;
import static com.auth0.jwt.JWT.create;
import static com.auth0.jwt.JWT.require;
import static java.time.LocalDateTime.now;
import static java.time.ZoneOffset.of;
import static java.util.UUID.fromString;
import static org.apache.commons.lang3.StringUtils.uncapitalize;

import br.com.trajy.security.config.PropertyLoader;
import br.com.trajy.security.model.constant.UserRoleType;
import br.com.trajy.security.model.entity.Usuario;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTVerificationException;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.auth0.jwt.interfaces.DecodedJWT;
import org.springframework.stereotype.Service;
import java.time.Instant;

@Service
public final class AuthUtils {

    private AuthUtils() { }

    public static String createToken(Usuario usuario) {
        return create()
                .withIssuer(getBean(PropertyLoader.class).getApplicationName())
                .withSubject(usuario.getEmail())
                .withClaim(uncapitalize(UserRoleType.class.getSimpleName()), usuario.getRole().name())
                .withClaim("id", usuario.getId().toString())
                .withExpiresAt(now().plusHours(3).toInstant(of("-3")))
                .sign(getBean(Algorithm.class));
    }

    public static boolean validateToken(String token) throws JWTVerificationException {
            decodeJwt(token);
            return true;
    }

    public static Usuario getUsuarioByToken(String jwtToken) {
        DecodedJWT decoded = decodeJwt(jwtToken);
        Usuario usuario = new Usuario();
        usuario.setId(fromString(decoded.getClaim("id").asString()));
        usuario.setEmail(decoded.getSubject());
        usuario.setRole(decoded.getClaim(uncapitalize(UserRoleType.class.getSimpleName())).as(UserRoleType.class));
        return usuario;
    }

    private static DecodedJWT decodeJwt(String token) {
        return require(getBean(Algorithm.class))
                .withIssuer(getBean(PropertyLoader.class).getApplicationName())
                .build().verify(token);
    }

}

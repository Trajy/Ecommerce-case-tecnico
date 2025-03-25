package br.com.trajy.security.config;


import static br.com.trajy.security.service.AuthUtils.getUsuarioByToken;
import static com.fasterxml.jackson.annotation.JsonInclude.Include.NON_NULL;
import static javax.servlet.http.HttpServletResponse.SC_UNAUTHORIZED;
import static org.apache.commons.lang3.StringUtils.EMPTY;
import static org.apache.commons.lang3.StringUtils.isNotBlank;
import static org.apache.commons.lang3.StringUtils.replace;
import static org.springframework.http.HttpMethod.POST;
import static org.springframework.http.HttpStatus.UNAUTHORIZED;
import static org.springframework.security.authentication.UsernamePasswordAuthenticationToken.authenticated;
import static org.springframework.security.config.http.SessionCreationPolicy.STATELESS;
import static org.springframework.security.core.context.SecurityContextHolder.getContext;

import br.com.trajy.architecture.restful.exception.data.struct.ErrorMessage;
import br.com.trajy.security.model.entity.Usuario;
import com.auth0.jwt.exceptions.TokenExpiredException;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public final class AuthConfigUtils {

    private AuthConfigUtils() { }

    public static HttpSecurity securityFilterChain(HttpSecurity httpSecurity) throws Exception {
        return httpSecurity
                .csrf(AbstractHttpConfigurer::disable)
                .addFilterBefore((request, response, filterChain) -> {
                    checkIfNotExpiredToken((HttpServletRequest) request, (HttpServletResponse) response, filterChain);
                }, UsernamePasswordAuthenticationFilter.class)
                .sessionManagement(sessionManagementCustomizer -> sessionManagementCustomizer.sessionCreationPolicy(STATELESS))
                .authorizeHttpRequests(authorizeHttpRequestsCustomizer -> {
                    authorizeHttpRequestsCustomizer
                    .antMatchers(
                            POST,
                            "/user",
                            "/user/auth"
                    ).permitAll();
                });
    }

    private static void checkIfNotExpiredToken(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain) throws ServletException, IOException {
        try {
            String token = replace(request.getHeader("Authorization"), "Bearer ", EMPTY);
            if(isNotBlank(token)) {
                setAuthenticationDataIntoContext(token);
            }
            filterChain.doFilter(request, response);
        } catch (TokenExpiredException ex) {
            ErrorMessage<String> errorMessage = ErrorMessage.<String>builder()
                    .status(String.valueOf(UNAUTHORIZED.value()))
                    .type(request.getRequestURI())
                    .detail("Token expirado. Faça login novamente.")
                    .build();
            ObjectMapper objectMapper = new ObjectMapper();
            objectMapper.setSerializationInclusion(NON_NULL);
            String jsonResponse = objectMapper.writeValueAsString(errorMessage);
            response.setContentType("application/json");
            response.setStatus(SC_UNAUTHORIZED);
            response.getWriter().write(jsonResponse);
        }
    }

    private static void setAuthenticationDataIntoContext(String token) {
        Usuario userDetails = getUsuarioByToken(token);
        UsernamePasswordAuthenticationToken authenticationToken = authenticated(userDetails.getUsername(), userDetails.getPassword(), userDetails.getAuthorities());
        authenticationToken.setDetails(userDetails.getId());
        getContext().setAuthentication(authenticationToken);
    }

}

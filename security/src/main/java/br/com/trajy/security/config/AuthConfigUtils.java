package br.com.trajy.security.config;


import static br.com.trajy.security.model.constant.UserRoleType.ADMIN;
import static br.com.trajy.security.service.AuthUtils.getUsuarioByToken;
import static org.apache.commons.lang3.StringUtils.EMPTY;
import static org.apache.commons.lang3.StringUtils.isNotBlank;
import static org.apache.commons.lang3.StringUtils.replace;
import static org.springframework.http.HttpMethod.POST;
import static org.springframework.security.authentication.UsernamePasswordAuthenticationToken.authenticated;
import static org.springframework.security.config.http.SessionCreationPolicy.STATELESS;
import static org.springframework.security.core.context.SecurityContextHolder.getContext;

import br.com.trajy.security.model.entity.Usuario;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;
import javax.servlet.http.HttpServletRequest;

public final class AuthConfigUtils {

    private AuthConfigUtils() { }

    public static HttpSecurity securityFilterChain(HttpSecurity httpSecurity) throws Exception {
        return httpSecurity
                .csrf(AbstractHttpConfigurer::disable)
                .addFilterBefore((request, response, filterChain) -> {
                    String token = replace(((HttpServletRequest) request).getHeader("Authorization"), "Bearer ", EMPTY);
                    if(isNotBlank(token)) {
                        Usuario userDetails = getUsuarioByToken(token);
                        UsernamePasswordAuthenticationToken authenticationToken = authenticated(userDetails.getUsername(), userDetails.getPassword(), userDetails.getAuthorities());
                        authenticationToken.setDetails(userDetails.getId());
                        getContext().setAuthentication(authenticationToken);
                    }
                    filterChain.doFilter(request, response);
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

}

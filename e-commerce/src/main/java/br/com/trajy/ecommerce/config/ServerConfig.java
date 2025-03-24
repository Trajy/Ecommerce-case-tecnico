package br.com.trajy.ecommerce.config;

import static br.com.trajy.security.model.constant.UserRoleType.ADMIN;
import static br.com.trajy.security.model.constant.UserRoleType.USER;
import static org.springframework.http.HttpMethod.DELETE;
import static org.springframework.http.HttpMethod.GET;
import static org.springframework.http.HttpMethod.POST;
import static org.springframework.http.HttpMethod.PUT;

import br.com.trajy.security.config.AuthConfigUtils;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class ServerConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity httpSecurity) throws Exception {
        return AuthConfigUtils.securityFilterChain(httpSecurity)
                .authorizeHttpRequests(authorizeHttpRequestsCustomizer -> {
                    authorizeHttpRequestsCustomizer
                            .antMatchers(
                                    GET,
                                    "/produtos",
                                    "/pedidos",
                                    "/pedidos/**",
                                    "/produtos",
                                    "/produtos/**"
                            )
                            .hasAnyRole(ADMIN.name(), USER.name())
                            .antMatchers(
                                    POST,
                                    "/pedidos",
                                    "/pedidos/pagamentos"

                            ).hasAnyRole(ADMIN.name(), USER.name())
                            .anyRequest().hasRole(ADMIN.name());

                })
                //.authorizeHttpRequests(customizer -> customizer.anyRequest().permitAll())
                .build();

    }

}

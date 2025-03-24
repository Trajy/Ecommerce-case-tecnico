package br.com.trajy.security.config;

import lombok.Getter;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;

@Component
@Getter
public class PropertyLoader {

    @Value("${spring.application.name}")
    private String applicationName;

    @Value("${api.auth.secret-key}")
    private String secretKey;

}

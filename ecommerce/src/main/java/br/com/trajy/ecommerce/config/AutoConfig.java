package br.com.trajy.ecommerce.config;

import br.com.trajy.architecture.restful.exception.RestGlobalExecptionHandler;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;

@Import({
        RestGlobalExecptionHandler.class,
})
@Configuration
public class AutoConfig {

}

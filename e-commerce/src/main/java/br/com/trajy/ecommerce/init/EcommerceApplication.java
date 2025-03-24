package br.com.trajy.ecommerce.init;

import static org.springframework.boot.SpringApplication.run;

import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication
@ComponentScan({
		"br.com.trajy.ecommerce",
		"br.com.trajy.security",
		"br.com.trajy.payment"
})
@EnableJpaRepositories({
		"br.com.trajy.ecommerce.repository",
		"br.com.trajy.security.repository",
		"br.com.trajy.payment.repository"
})
@EntityScan({
		"br.com.trajy.ecommerce.model.entity",
		"br.com.trajy.security.model.entity",
		"br.com.trajy.payment.model.entity"
})
public class EcommerceApplication {

	public static void main(String[] args) {
		run(EcommerceApplication.class, args);
	}

}

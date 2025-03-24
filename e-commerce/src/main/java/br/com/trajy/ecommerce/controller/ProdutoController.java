package br.com.trajy.ecommerce.controller;

import br.com.trajy.architecture.layer.controller.ControllerAbstract;
import br.com.trajy.ecommerce.controller.config.ProdutoControllerConfig;
import br.com.trajy.ecommerce.model.dto.ProdutoDTO;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.UUID;

@RestController
@RequestMapping("/produtos")
@RequiredArgsConstructor
@Getter
public class ProdutoController extends ControllerAbstract<UUID, ProdutoDTO> {

    private final ProdutoControllerConfig config;

}

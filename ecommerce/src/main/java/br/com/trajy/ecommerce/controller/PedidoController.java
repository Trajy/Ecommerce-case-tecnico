package br.com.trajy.ecommerce.controller;

import static org.springframework.http.MediaType.APPLICATION_JSON_VALUE;
import static org.springframework.http.ResponseEntity.ok;

import br.com.trajy.architecture.layer.controller.ControllerAbstract;
import br.com.trajy.ecommerce.controller.config.PedidoControllerConfig;
import br.com.trajy.ecommerce.model.dto.PedidoDTO;
import br.com.trajy.payment.model.dto.PagamentoDTO;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import java.util.UUID;

@RestController
@RequestMapping("/pedidos")
@RequiredArgsConstructor
@Getter
public class PedidoController extends ControllerAbstract<UUID, PedidoDTO> {

    private final PedidoControllerConfig config;

    @PostMapping(value = "/pagamentos", consumes = APPLICATION_JSON_VALUE)
    public ResponseEntity<?> pagar(@RequestBody PagamentoDTO dto) {
        return ok(
                config.getAssembly().toResource(
                        config.getService().processar(
                                config.getPagamentoAssembly().toEntity(dto)
                        )
                )
        );
    }

}

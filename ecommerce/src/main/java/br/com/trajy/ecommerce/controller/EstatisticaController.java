package br.com.trajy.ecommerce.controller;

import br.com.trajy.security.model.projection.UsuarioMaisComprouProjection;
import br.com.trajy.security.model.projection.UsuarioTicketMedioProjection;
import br.com.trajy.ecommerce.service.EstatisticaService;
import lombok.RequiredArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.math.BigDecimal;
import java.util.List;

@RestController
@RequestMapping("/estatisticas")
@RequiredArgsConstructor
public class EstatisticaController {

    private final EstatisticaService estatisticaService;

    // Endpoint para retornar os 5 usuários que mais compraram
    @GetMapping("/mais-compraram")
    public List<UsuarioMaisComprouProjection> getUsuariosMaisCompraram(
            @RequestParam(defaultValue = "5") int quantidade) {
        return estatisticaService.getUsuariosMaisCompraram(quantidade);
    }

    // Endpoint para retornar o ticket médio de cada usuário
    @GetMapping("/ticket-medio")
    public List<UsuarioTicketMedioProjection> getTicketMedio() {
        return estatisticaService.getTicketMedio();
    }

    // Endpoint para retornar o valor total faturado no mês corrente
    @GetMapping("/total-faturado-mes")
    public BigDecimal getTotalFaturadoMes() {
        return estatisticaService.getTotalFaturadoMes();
    }
}

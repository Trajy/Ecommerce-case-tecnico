package br.com.trajy.ecommerce.service;

import br.com.trajy.ecommerce.repository.PedidoRepository;
import br.com.trajy.security.model.projection.UsuarioMaisComprouProjection;
import br.com.trajy.security.model.projection.UsuarioTicketMedioProjection;
import br.com.trajy.security.repository.UsuarioRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.math.BigDecimal;
import java.util.List;

@Service
@RequiredArgsConstructor
public class EstatisticaService {

    private final UsuarioRepository usuarioRepository;
    private final PedidoRepository pedidoRepository;

    @Transactional(readOnly = true)
    public List<UsuarioMaisComprouProjection> getUsuariosMaisCompraram(int quantidade) {
        return usuarioRepository.findTopUsuariosMaisCompraram(quantidade);
    }

    @Transactional(readOnly = true)
    public List<UsuarioTicketMedioProjection> getTicketMedio() {
        return usuarioRepository.findTicketMedioPorUsuario();
    }

    @Transactional(readOnly = true)
    public BigDecimal getTotalFaturadoMes() {
        return pedidoRepository.getTotalFaturadoMes();
    }
}

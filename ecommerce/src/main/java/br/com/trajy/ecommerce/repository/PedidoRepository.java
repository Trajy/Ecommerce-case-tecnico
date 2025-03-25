package br.com.trajy.ecommerce.repository;

import br.com.trajy.ecommerce.model.entity.Pedido;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.math.BigDecimal;
import java.util.UUID;

@Repository
public interface PedidoRepository extends JpaRepository<Pedido, UUID> {

    @Query(name = "Estatistica.getTotalFaturadoMes")
    BigDecimal getTotalFaturadoMes();

    Page<Pedido> findByUsuarioId(UUID usuarioId, Pageable pageable);

}

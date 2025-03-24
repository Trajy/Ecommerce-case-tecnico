package br.com.trajy.payment.repository;

import br.com.trajy.payment.model.entity.PagamentoRealizado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import java.util.UUID;

@Repository
public interface PagamentoRepository extends JpaRepository<PagamentoRealizado, UUID> {

}

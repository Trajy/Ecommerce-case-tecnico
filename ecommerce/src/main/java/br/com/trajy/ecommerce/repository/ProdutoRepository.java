package br.com.trajy.ecommerce.repository;

import br.com.trajy.ecommerce.model.entity.Produto;
import br.com.trajy.ecommerce.model.projection.ProdutoPrecoProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Repository
public interface ProdutoRepository extends JpaRepository<Produto, UUID> {

    @Query(name = "Produto.findPrecoByIds")
    List<ProdutoPrecoProjection> findPrecoByIds(List<UUID> ids);

}

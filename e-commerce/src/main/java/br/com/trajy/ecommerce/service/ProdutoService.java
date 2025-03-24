package br.com.trajy.ecommerce.service;

import br.com.trajy.architecture.layer.service.ServiceAbstract;
import br.com.trajy.ecommerce.model.entity.Produto;
import br.com.trajy.ecommerce.model.projection.ProdutoPrecoProjection;
import br.com.trajy.ecommerce.repository.ProdutoRepository;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Getter
public class ProdutoService extends ServiceAbstract<UUID, Produto> {

    private final ProdutoRepository repository;

    public List<ProdutoPrecoProjection> findPrecoByIds(List<UUID> ids) {
        return repository.findPrecoByIds(ids);
    }

    public List<Produto> findByIds(List<UUID> ids) {
        return repository.findAllById(ids);
    }

    public List<Produto> saveAll(List<Produto> entities) {
        return repository.saveAll(entities);
    }

}

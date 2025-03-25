package br.com.trajy.ecommerce.service;

import static org.springframework.data.domain.Pageable.ofSize;

import br.com.trajy.architecture.layer.service.ServiceAbstract;
import br.com.trajy.ecommerce.model.entity.Produto;
import br.com.trajy.ecommerce.model.projection.ProdutoPrecoProjection;
import br.com.trajy.ecommerce.repository.ProdutoRepository;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Getter
public class ProdutoService extends ServiceAbstract<UUID, Produto> {

    private final ProdutoRepository repository;

    @Override
    @Transactional(readOnly = true)
    public List<Produto> findByFilter(Pageable pageable) {
        return repository.findAll(pageable).stream().toList();
    }

    @Transactional(readOnly = true)
    public List<ProdutoPrecoProjection> findPrecoByIds(List<UUID> ids) {
        return repository.findPrecoByIds(ids);
    }

    @Transactional(readOnly = true)
    public List<Produto> findByIds(List<UUID> ids) {
        return repository.findAllById(ids);
    }

    @Transactional(rollbackFor = Exception.class)
    public List<Produto> saveAll(List<Produto> entities) {
        return repository.saveAll(entities);
    }

}

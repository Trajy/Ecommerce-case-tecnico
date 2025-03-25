package br.com.trajy.payment.service;

import static br.com.trajy.payment.model.constant.MetodoPagamentoType.processarPagamento;

import br.com.trajy.architecture.layer.service.ServiceAbstract;
import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import br.com.trajy.payment.repository.PagamentoRepository;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Getter
public class PagamentoService extends ServiceAbstract<UUID, PagamentoRealizado> {

    private final PagamentoRepository repository;

    @Transactional(rollbackFor = Exception.class)
    public PagamentoRealizado processar(Pagamento pagamento) {
        return repository.save(processarPagamento(pagamento));
    }

}

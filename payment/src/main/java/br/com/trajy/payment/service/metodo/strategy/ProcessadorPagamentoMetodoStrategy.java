package br.com.trajy.payment.service.metodo.strategy;

import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;

public interface ProcessadorPagamentoMetodoStrategy {

    PagamentoRealizado processar(Pagamento pagamento);

}

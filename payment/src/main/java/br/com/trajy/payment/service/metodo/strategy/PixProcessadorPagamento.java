package br.com.trajy.payment.service.metodo.strategy;

import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import com.github.javafaker.Faker;
import java.time.ZonedDateTime;

public class PixProcessadorPagamento implements ProcessadorPagamentoMetodoStrategy {

    private final Faker faker = new Faker();

    @Override
    public PagamentoRealizado processar(Pagamento pagamento) {
        PagamentoRealizado pagamentoRealizado = new PagamentoRealizado();
        pagamentoRealizado.setIdTransacao(faker.idNumber().valid());
        pagamentoRealizado.setMetodoPagamentoType(pagamento.getMetodo());
        pagamentoRealizado.setDataHora(ZonedDateTime.now());
        pagamentoRealizado.setValor(pagamento.getValor());
        pagamentoRealizado.setDescricao(faker.lorem().sentence());
        pagamentoRealizado.setAprovado(faker.bool().bool());
        return pagamentoRealizado;
    }
}

package br.com.trajy.payment.model.constant;


import br.com.trajy.payment.service.metodo.strategy.CartaoCreditoProcessadorPagamento;
import br.com.trajy.payment.service.metodo.strategy.PixProcessadorPagamento;
import lombok.SneakyThrows;
import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import br.com.trajy.payment.service.metodo.strategy.ProcessadorPagamentoMetodoStrategy;

public enum MetodoPagamentoType {

    CARTAO_CREDITO(CartaoCreditoProcessadorPagamento.class),
    PIX(PixProcessadorPagamento.class);

    private final ProcessadorPagamentoMetodoStrategy processadorPagamentoMetodoStrategy;

    @SneakyThrows
    <T extends ProcessadorPagamentoMetodoStrategy> MetodoPagamentoType(Class<T> tClass) {
        processadorPagamentoMetodoStrategy = tClass.getDeclaredConstructor().newInstance();
    }

    public static PagamentoRealizado processarPagamento(Pagamento pagamento) {
        return pagamento.getMetodo().processadorPagamentoMetodoStrategy.processar(pagamento);
    }

}

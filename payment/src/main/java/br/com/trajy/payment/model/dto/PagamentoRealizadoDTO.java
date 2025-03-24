package br.com.trajy.payment.model.dto;

import lombok.Getter;
import lombok.Setter;
import java.math.BigDecimal;
import java.time.ZonedDateTime;

@Getter
@Setter
public class PagamentoRealizadoDTO {

    private String idTransacao;

    private String nome;

    private ZonedDateTime dataHora;

    private String descricao;

    private BigDecimal valor;

    private String metodoPagamentoType;

}

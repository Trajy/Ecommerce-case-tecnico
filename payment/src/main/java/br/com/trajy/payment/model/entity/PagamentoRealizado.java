package br.com.trajy.payment.model.entity;

import static javax.persistence.EnumType.STRING;

import br.com.trajy.architecture.layer.data.struct.model.AuditableEntity;
import br.com.trajy.payment.model.constant.MetodoPagamentoType;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import java.math.BigDecimal;
import java.time.ZonedDateTime;
import java.util.UUID;

@Entity
@Getter
@Setter
public class PagamentoRealizado extends AuditableEntity<UUID> {

    private String idTransacao;

    private String nome;

    private ZonedDateTime dataHora;

    private String descricao;

    private BigDecimal valor;

    private Boolean aprovado;

    @Enumerated(STRING)
    private MetodoPagamentoType metodoPagamentoType;

}

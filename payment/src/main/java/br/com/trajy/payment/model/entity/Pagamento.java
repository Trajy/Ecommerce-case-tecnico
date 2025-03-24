package br.com.trajy.payment.model.entity;


import static javax.persistence.EnumType.STRING;

import br.com.trajy.architecture.layer.data.struct.model.AuditableEntity;
import br.com.trajy.payment.model.constant.MetodoPagamentoType;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.Enumerated;
import java.math.BigDecimal;
import java.util.UUID;


@Getter
@Setter
public class Pagamento {

    private UUID pedidoId;

    private String numeroCartaoChavePix;

    private String nomePagador;

    private BigDecimal valor;

    @Enumerated(STRING)
    private MetodoPagamentoType metodo;

}

package br.com.trajy.payment.model.dto;

import br.com.trajy.architecture.layer.data.struct.resource.AuditableResource;
import lombok.Getter;
import lombok.Setter;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Positive;
import java.math.BigDecimal;
import java.util.UUID;

@Getter
@Setter
public class PagamentoDTO extends AuditableResource<UUID> {

    @NotNull
    private UUID pedidoId;

    @NotBlank
    private String numeroCartaoChavePix;

    @NotBlank
    private String nomePagador;

    @NotNull
    @Positive
    private BigDecimal valor;

    @NotBlank(message = "metodo de pagamento deve ser informado")
    private String metodo;

}

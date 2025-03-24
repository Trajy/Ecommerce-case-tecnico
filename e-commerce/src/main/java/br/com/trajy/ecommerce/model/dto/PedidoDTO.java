package br.com.trajy.ecommerce.model.dto;

import br.com.trajy.architecture.layer.data.struct.resource.AuditableResource;
import br.com.trajy.payment.model.dto.PagamentoDTO;
import br.com.trajy.security.model.dto.UsuarioDTO;
import lombok.Getter;
import lombok.Setter;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Getter
@Setter
public class PedidoDTO extends AuditableResource<UUID> {

    private UsuarioDTO usuario;

    @Null(message = "Pagamento não deve ser informado.")
    private PagamentoDTO pagamento;

    @NotNull
    private List<ProdutoPedidoDTO> produtosPedidos;

    @Null(message = "Status do pedido não pode ser informado.")
    private String status;

    @Null(message = "Total dos produtos não deve ser informado.")
    private BigDecimal totalProdutos;

    @Null
    private String situacao;

}

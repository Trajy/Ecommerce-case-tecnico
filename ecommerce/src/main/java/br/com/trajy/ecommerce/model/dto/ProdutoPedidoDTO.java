package br.com.trajy.ecommerce.model.dto;

import br.com.trajy.architecture.layer.data.struct.common.Identity;
import lombok.Getter;
import lombok.Setter;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Null;
import java.math.BigDecimal;
import java.util.UUID;

@Getter
@Setter
public class ProdutoPedidoDTO extends Identity<UUID> {

    @NotNull
    private ProdutoDTO produto;

    @Null
    private BigDecimal preco;

    @NotNull
    private Integer quantidade;

}

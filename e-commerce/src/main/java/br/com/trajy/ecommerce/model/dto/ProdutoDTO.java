package br.com.trajy.ecommerce.model.dto;

import br.com.trajy.architecture.layer.data.struct.resource.AuditableResource;
import lombok.Getter;
import lombok.Setter;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.PositiveOrZero;
import java.math.BigDecimal;
import java.util.UUID;

@Getter
@Setter
public class ProdutoDTO extends AuditableResource<UUID> {

    @NotBlank(message = "Nome deve ser informado.")
    private String nome;

    @NotBlank(message = "Descricao deve ser informada.")
    private String descricao;

    @PositiveOrZero(message = "Preco deve ser maior ou igual a 0.")
    private BigDecimal preco;

    @PositiveOrZero(message = "Quantidade deve ser maior ou igual a 0.")
    private Integer quantidadeEstoque;

    @NotBlank(message = "Categoria deve ser informada.")
    private String categoria;

}

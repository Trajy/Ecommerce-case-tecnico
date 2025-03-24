package br.com.trajy.ecommerce.model.entity;

import static javax.persistence.EnumType.STRING;

import br.com.trajy.architecture.layer.data.struct.model.AuditableEntity;
import br.com.trajy.ecommerce.model.constant.CategoriaType;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.PositiveOrZero;
import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Getter
@Setter
public class Produto extends AuditableEntity<UUID> {

    @NotBlank(message = "")
    @Column(nullable = false)
    private String nome;

    @NotBlank
    @Column(nullable = false)
    private String descricao;

    @PositiveOrZero
    @Column(nullable = false)
    private BigDecimal preco;

    @PositiveOrZero
    @Column(nullable = false)
    private Integer quantidadeEstoque;

    @Enumerated(STRING)
    @Column(nullable = false)
    private CategoriaType categoria;


}

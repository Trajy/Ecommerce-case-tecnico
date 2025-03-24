package br.com.trajy.ecommerce.model.entity;

import br.com.trajy.architecture.layer.data.struct.common.Identity;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.validation.constraints.Null;
import javax.validation.constraints.Positive;
import java.math.BigDecimal;
import java.util.UUID;

@Entity
@Getter
@Setter
public class ProdutoPedido extends Identity<UUID> {

    @OneToOne
    @JoinColumn(name = "produto_id", nullable = false)
    private Produto produto;

    @Column(nullable = false)
    private BigDecimal preco;

    @Positive
    @Column(nullable = false)
    private Integer quantidade;

}

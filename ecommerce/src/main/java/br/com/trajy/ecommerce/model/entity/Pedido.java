package br.com.trajy.ecommerce.model.entity;

import static javax.persistence.CascadeType.ALL;
import static javax.persistence.CascadeType.REMOVE;
import static javax.persistence.EnumType.STRING;
import static javax.persistence.FetchType.LAZY;

import br.com.trajy.architecture.layer.data.struct.model.AuditableEntity;
import br.com.trajy.ecommerce.model.constant.PedidoStatusType;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import br.com.trajy.security.model.entity.Usuario;
import lombok.Getter;
import lombok.Setter;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Enumerated;
import javax.persistence.Index;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.PositiveOrZero;
import java.math.BigDecimal;
import java.util.List;
import java.util.UUID;

@Entity
@Table(indexes = {
        @Index(name = "idx_pedido_usuario", columnList = "usuario_id"),
        @Index(name = "idx_created_at", columnList = "createdAt")
})
@Getter
@Setter
public class Pedido extends AuditableEntity<UUID> {

    @ManyToOne(fetch = LAZY, cascade = REMOVE)
    @JoinColumn(nullable = false, updatable = false)
    private Usuario usuario;

    @OneToOne
    @JoinColumn(name = "pagamento_id", unique = true)
    private PagamentoRealizado pagamento;

    @OneToMany(cascade = ALL)
    @JoinColumn(name = "pedido_id", nullable = false)
    private List<ProdutoPedido> produtosPedidos;

    @Enumerated(STRING)
    @Column(nullable = false)
    private PedidoStatusType status;

    @PositiveOrZero
    @Column(nullable = false)
    private BigDecimal totalProdutos;

}

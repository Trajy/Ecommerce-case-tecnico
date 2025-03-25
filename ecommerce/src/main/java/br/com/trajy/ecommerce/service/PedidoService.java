package br.com.trajy.ecommerce.service;

import static br.com.trajy.architecture.layer.controller.util.SecurityUtils.getAuthenticatedUserId;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.CANCELADO;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PENDENTE;
import static br.com.trajy.ecommerce.model.constant.PedidoStatusType.PREPARACAO;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.calcularTotalProdutosPedido;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.getPrecoAtualProdutos;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.getProdutoIds;
import static br.com.trajy.ecommerce.service.util.pedido.PedidoUtils.recalculaQuantidadeEstoqueProdutos;
import static com.google.common.base.Preconditions.checkState;
import static org.apache.commons.lang3.BooleanUtils.isFalse;
import static org.apache.commons.lang3.ObjectUtils.notEqual;
import static org.springframework.data.domain.Pageable.ofSize;
import static org.springframework.transaction.annotation.Propagation.REQUIRES_NEW;

import br.com.trajy.architecture.layer.controller.util.SecurityUtils;
import br.com.trajy.architecture.layer.service.ServiceAbstract;
import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.model.entity.ProdutoPedido;
import br.com.trajy.ecommerce.repository.PedidoRepository;
import br.com.trajy.ecommerce.service.util.pedido.PedidoUtils;
import br.com.trajy.payment.model.entity.Pagamento;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import br.com.trajy.payment.service.PagamentoService;
import br.com.trajy.security.model.entity.Usuario;
import br.com.trajy.security.service.UsuarioService;
import lombok.Getter;
import lombok.RequiredArgsConstructor;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;
import java.util.UUID;

@Service
@RequiredArgsConstructor
@Getter
public class PedidoService extends ServiceAbstract<UUID, Pedido> {

    private final PedidoRepository repository;

    private final UsuarioService usuarioService;

    private final ProdutoService produtoService;

    @Override
    @Transactional(readOnly = true)
    public List<Pedido> findByFilter(Pageable pageable) {
        Page<Pedido> pageEntities = getRepository().findByUsuarioId(getAuthenticatedUserId(), pageable);
        return pageEntities.stream().toList();
    }

    @Override
    public void beforeSave(Pedido pedido) {
        Usuario usuario = new Usuario();
        usuario.setId(getAuthenticatedUserId());
        pedido.setUsuario(usuario);
        PENDENTE.changeStatus(pedido);
        getPrecoAtualProdutos(pedido, produtoService.findPrecoByIds(getProdutoIds(pedido)));
        calcularTotalProdutosPedido(pedido);
    }

    @Transactional(propagation = REQUIRES_NEW, rollbackFor = Exception.class)
    public Pedido saveAndCommit(Pedido pedido) {
        return this.save(pedido);
    }

}

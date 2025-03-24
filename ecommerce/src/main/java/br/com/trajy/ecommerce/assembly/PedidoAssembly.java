package br.com.trajy.ecommerce.assembly;

import static org.mapstruct.InjectionStrategy.CONSTRUCTOR;
import static org.mapstruct.MappingConstants.ComponentModel.SPRING;

import br.com.trajy.architecture.layer.assembly.AssemblyMapperAbstract;
import br.com.trajy.ecommerce.model.dto.PedidoDTO;
import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.payment.assembly.PagamentoRealizadoAssembly;
import br.com.trajy.security.assembly.UsuarioAssembly;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(
        componentModel = SPRING,
        injectionStrategy = CONSTRUCTOR,
        uses = {
                ProdutoPedidoAssembly.class,
                UsuarioAssembly.class,
                PagamentoRealizadoAssembly.class,
        }
)
public abstract class PedidoAssembly extends AssemblyMapperAbstract<PedidoDTO, Pedido> {

    @Override
    @Mapping(target = "usuario", ignore = true)
    public abstract PedidoDTO toResource(Pedido pedido);
}

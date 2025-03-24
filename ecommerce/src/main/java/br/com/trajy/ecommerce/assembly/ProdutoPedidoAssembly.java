package br.com.trajy.ecommerce.assembly;

import static org.mapstruct.InjectionStrategy.CONSTRUCTOR;
import static org.mapstruct.MappingConstants.ComponentModel.SPRING;

import br.com.trajy.architecture.layer.assembly.AssemblyMapperAbstract;
import br.com.trajy.ecommerce.model.dto.ProdutoPedidoDTO;
import br.com.trajy.ecommerce.model.entity.ProdutoPedido;
import org.mapstruct.Mapper;

@Mapper(componentModel = SPRING, injectionStrategy = CONSTRUCTOR, uses = ProdutoAssembly.class)
public abstract class ProdutoPedidoAssembly extends AssemblyMapperAbstract<ProdutoPedidoDTO, ProdutoPedido> {

}

package br.com.trajy.ecommerce.assembly;

import static org.mapstruct.MappingConstants.ComponentModel.SPRING;

import br.com.trajy.architecture.layer.assembly.AssemblyMapperAbstract;
import br.com.trajy.ecommerce.model.dto.ProdutoDTO;
import br.com.trajy.ecommerce.model.entity.Produto;
import org.mapstruct.Mapper;

@Mapper(componentModel = SPRING)
public abstract class ProdutoAssembly extends AssemblyMapperAbstract<ProdutoDTO, Produto> {

}

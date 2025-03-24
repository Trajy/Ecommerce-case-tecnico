package br.com.trajy.payment.assembly;

import static org.mapstruct.MappingConstants.ComponentModel.SPRING;

import br.com.trajy.architecture.layer.assembly.AssemblyMapperAbstract;
import br.com.trajy.payment.model.dto.PagamentoDTO;
import br.com.trajy.payment.model.entity.Pagamento;
import org.mapstruct.Mapper;

@Mapper(componentModel = SPRING)
public abstract class PagamentoAssembly extends AssemblyMapperAbstract<PagamentoDTO, Pagamento> {

}

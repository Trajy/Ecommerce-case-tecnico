package br.com.trajy.payment.assembly;

import static org.mapstruct.MappingConstants.ComponentModel.SPRING;

import br.com.trajy.architecture.layer.assembly.AssemblyMapperAbstract;
import br.com.trajy.payment.model.dto.PagamentoRealizadoDTO;
import br.com.trajy.payment.model.entity.PagamentoRealizado;
import org.mapstruct.Mapper;

@Mapper(componentModel = SPRING)
public abstract class PagamentoRealizadoAssembly extends AssemblyMapperAbstract<PagamentoRealizadoDTO, PagamentoRealizado> {

}

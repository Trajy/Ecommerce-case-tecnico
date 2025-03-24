package br.com.trajy.security.assembly;

import static org.mapstruct.MappingConstants.ComponentModel.SPRING;

import br.com.trajy.architecture.layer.assembly.AssemblyMapperAbstract;
import br.com.trajy.security.model.dto.UsuarioDTO;
import br.com.trajy.security.model.entity.Usuario;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

@Mapper(componentModel = SPRING)
public abstract class UsuarioAssembly extends AssemblyMapperAbstract<UsuarioDTO, Usuario> {

    @Override
    @Mapping(target = "senha", ignore = true)
    public abstract UsuarioDTO toResource(Usuario usuario);

}

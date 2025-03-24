package br.com.trajy.security.model.dto;


import br.com.trajy.architecture.layer.data.struct.resource.AuditableResource;
import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Getter;
import lombok.Setter;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Null;
import java.util.UUID;

@Getter
@Setter
public class UsuarioDTO extends AuditableResource<UUID> {

    private String nome;

    @NotBlank
    private String email;

    @NotBlank
    private String senha;

    @Null(message = "Role nao pode ser definida")
    private String role;

}

package br.com.trajy.security.repository;

import br.com.trajy.security.model.entity.Usuario;
import br.com.trajy.security.model.projection.UsuarioMaisComprouProjection;
import br.com.trajy.security.model.projection.UsuarioTicketMedioProjection;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.stereotype.Repository;
import java.util.List;
import java.util.UUID;

@Repository
public interface UsuarioRepository extends JpaRepository<Usuario, UUID> {

    UserDetails findByEmail(String email);

    @Query(name = "Estatistica.findTopUsuariosMaisCompraram")
    List<UsuarioMaisComprouProjection> findTopUsuariosMaisCompraram(int quantidade);

    @Query(name = "Estatistica.findTicketMedioPorUsuario")
    List<UsuarioTicketMedioProjection> findTicketMedioPorUsuario();

}

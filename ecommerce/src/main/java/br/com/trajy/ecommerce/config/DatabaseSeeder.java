package br.com.trajy.ecommerce.config;

import br.com.trajy.ecommerce.model.constant.CategoriaType;
import br.com.trajy.ecommerce.model.constant.PedidoStatusType;
import br.com.trajy.ecommerce.model.entity.Pedido;
import br.com.trajy.ecommerce.model.entity.Produto;
import br.com.trajy.ecommerce.model.entity.ProdutoPedido;
import br.com.trajy.ecommerce.repository.PedidoRepository;
import br.com.trajy.ecommerce.repository.ProdutoRepository;
import br.com.trajy.security.model.constant.UserRoleType;
import br.com.trajy.security.model.entity.Usuario;
import br.com.trajy.security.repository.UsuarioRepository;
import com.github.javafaker.Faker;
import lombok.RequiredArgsConstructor;
import org.joda.time.DateTime;
import org.springframework.boot.CommandLineRunner;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

//@Component
@RequiredArgsConstructor
public class DatabaseSeeder implements CommandLineRunner {

    private final UsuarioRepository usuarioRepository;
    private final PedidoRepository pedidoRepository;
    private final ProdutoRepository produtoRepository;
    private final PasswordEncoder passwordEncoder;
    private final Faker faker = new Faker();
    private final Random random = new Random();

    @Override
    public void run(String... args) {
        List<Usuario> usuarios = new ArrayList<>();

        // Criar 1 usuário ADMIN
        Usuario admin = new Usuario();
        admin.setNome("Administrador");
        admin.setEmail("admin@email.com");
        admin.setSenha(passwordEncoder.encode("admin")); // Hash da senha
        admin.setRole(UserRoleType.ADMIN);
        usuarios.add(admin);

        // Criar 9 usuários USER
        for (int i = 0; i < 9; i++) {
            Usuario usuario = new Usuario();
            usuario.setNome(faker.name().fullName());
            usuario.setEmail(faker.internet().emailAddress());
            usuario.setSenha(passwordEncoder.encode("1234")); // Hash da senha
            usuario.setRole(UserRoleType.USER);
            usuarios.add(usuario);
        }
        usuarioRepository.saveAll(usuarios);

        // Criar 50 produtos com categorias variadas
        List<Produto> produtos = new ArrayList<>();
        CategoriaType[] categorias = CategoriaType.values();

        for (int i = 0; i < 50; i++) {
            Produto produto = new Produto();
            produto.setNome(faker.commerce().productName());
            produto.setDescricao(faker.lorem().sentence());
            produto.setPreco(BigDecimal.valueOf(faker.number().randomDouble(2, 10, 1000)));
            produto.setQuantidadeEstoque(faker.number().numberBetween(1, 50));
            produto.setCategoria(categorias[random.nextInt(categorias.length)]);

            produtos.add(produto);
        }
        produtoRepository.saveAll(produtos);

        // Criar de 3 a 4 pedidos para cada usuário USER (excluindo o ADMIN)
        List<Pedido> pedidos = new ArrayList<>();
        for (Usuario usuario : usuarios) {
            if (usuario.getRole() == UserRoleType.ADMIN) continue;

            int numeroPedidos = random.nextInt(2) + 3;
            for (int i = 0; i < numeroPedidos; i++) {
                Pedido pedido = new Pedido();
                pedido.setUsuario(usuario);
                pedido.setStatus(PedidoStatusType.PENDENTE);
                pedido.setCreatedAt(DateTime.now());

                // Seleciona produtos aleatórios para o pedido
                List<ProdutoPedido> produtosPedidos = new ArrayList<>();
                int quantidadeProdutos = random.nextInt(3) + 1;
                for (int j = 0; j < quantidadeProdutos; j++) {
                    Produto produto = produtos.get(random.nextInt(produtos.size()));
                    ProdutoPedido produtoPedido = new ProdutoPedido();
                    produtoPedido.setProduto(produto);
                    produtoPedido.setQuantidade(random.nextInt(3) + 1);
                    produtoPedido.setPreco(produto.getPreco());
                    produtosPedidos.add(produtoPedido);
                }
                pedido.setProdutosPedidos(produtosPedidos);

                // Calcula o total do pedido
                BigDecimal totalPedido = produtosPedidos.stream()
                        .map(pp -> pp.getProduto().getPreco().multiply(BigDecimal.valueOf(pp.getQuantidade())))
                        .reduce(BigDecimal.ZERO, BigDecimal::add);

                pedido.setTotalProdutos(totalPedido);
                pedidos.add(pedido);
            }
        }
        pedidoRepository.saveAll(pedidos);
    }
}

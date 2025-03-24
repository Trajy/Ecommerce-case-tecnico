package br.com.trajy.ecommerce.model.projection;

import java.math.BigDecimal;
import java.util.UUID;

public interface ProdutoPrecoProjection {

    UUID getId();
    BigDecimal getPreco();

}


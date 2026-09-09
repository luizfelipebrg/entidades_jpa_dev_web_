package br.edu.unifio.ecommerce;

import static org.assertj.core.api.Assertions.assertThat;

import jakarta.persistence.EntityManager;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class EcommerceApplicationTests {

    @Autowired
    private EntityManager entityManager;

    @Test
    void shouldLoadAllImportRecords() {
        assertThat(count("categoria")).isEqualTo(5);
        assertThat(count("produto")).isEqualTo(5);
        assertThat(count("cliente")).isEqualTo(5);
        assertThat(count("pedido")).isEqualTo(5);
        assertThat(count("item_pedido")).isEqualTo(5);
        assertThat(count("pagamento")).isEqualTo(5);
    }

    private long count(String tableName) {
        return ((Number) entityManager.createNativeQuery("SELECT COUNT(*) FROM " + tableName)
                .getSingleResult()).longValue();
    }
}

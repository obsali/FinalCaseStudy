package teksystems.casestudy.database.dao;


import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import teksystems.casestudy.database.entity.Product;

import java.util.ArrayList;
import java.util.List;


@Repository
public interface ProductDAO extends JpaRepository<Product, Long>
{
    List<Product> findProductById(@Param("id") Integer id);

    static List<Product> findByName(@Param("name") String name) {
        return new ArrayList<>();
    }
}

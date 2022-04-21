package teksystems.casestudy.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import teksystems.casestudy.database.entity.Order;
import teksystems.casestudy.database.entity.OrderProduct;
import teksystems.casestudy.database.entity.User;

import java.util.List;
import java.util.Map;

@Repository
public interface OrderDAO extends JpaRepository<Order, Long> {

    @Query(value=" select product_id, count(*) as cnt, p.name from order_products op, products p where op.product_id = p.id group by product_id",
            nativeQuery = true)
    List<Map<String,Object>> getProductNameAndOderCount();
    @Query(value="select p.id as product_id, p.name, p.price, op.quantity, o.id as order_id, (price * quantity) as total " +
            "from products p, order_products op, orders o " +
            "where p.id = op.product_id and o.id = op.order_id " +
            "and o.user_id = :userId and status = :status", nativeQuery = true)

    List<Map<String,Object>> getCartProducts(@Param("userId") Integer userId, @Param("status") String status );

}



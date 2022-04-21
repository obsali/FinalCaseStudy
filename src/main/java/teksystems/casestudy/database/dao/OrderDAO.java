package teksystems.casestudy.database.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import teksystems.casestudy.database.entity.Order;
import teksystems.casestudy.database.entity.OrderProduct;
import teksystems.casestudy.database.entity.User;

import java.util.List;

@Repository
public interface OrderDAO extends JpaRepository<OrderProduct, Long> {

    @Override
    List<OrderProduct> findAllById(Iterable<Long> longs);

//    Order findPendingTransactionByUserId(Integer id);


}



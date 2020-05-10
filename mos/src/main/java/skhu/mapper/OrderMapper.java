package skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import skhu.dto.Order;

@Mapper
public interface OrderMapper {
	Order findOne(int id);
	Order findByBasketId(int basketId);
	List<Order> findAll();
	void insert(Order order);
	void update(Order order);
	void delete(int id);
}

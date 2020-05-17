package skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import skhu.dto.OrderList;

@Mapper
public interface OrderListMapper {
	OrderList findOne(int id);
	OrderList findByBasketId(int basketId);
	List<OrderList> findAll();
	void insert(OrderList orderList);
	void update(OrderList orderList);
	void delete(int id);
}

package skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import skhu.dto.Basket;
import skhu.dto.Menu1;

@Mapper
public interface BasketMapper {
	Basket findOne(int id);
	Basket findByName(String menuName);
	List<Basket> findAll();
	void insert(Basket basket);
	void update(Basket basket);
	void delete(int id);
	//	void updateid();

}

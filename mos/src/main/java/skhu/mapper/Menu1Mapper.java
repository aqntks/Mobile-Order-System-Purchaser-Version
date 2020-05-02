package skhu.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import skhu.dto.Menu1;

@Mapper
public interface Menu1Mapper {
	Menu1 findOne(int id);
	Menu1 findByName(String name);
	List<Menu1> findAll();
	void insert(Menu1 menu1);
	void update(Menu1 menu1);
	void delete(int id);
	
	//void updateid();
}

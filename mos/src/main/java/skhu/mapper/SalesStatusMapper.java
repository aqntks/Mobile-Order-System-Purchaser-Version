package skhu.mapper;

import org.apache.ibatis.annotations.Mapper;

import skhu.dto.SalesStatus;

@Mapper
public interface SalesStatusMapper {
	SalesStatus findOne(int id);
	void update(SalesStatus salesStatus);

}

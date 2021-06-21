package com.cs.ssm.mapper;

import com.cs.ssm.entity.Commodityclasses;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 9:27
 **/
public interface CommodityClassesMapper {

    @Select("select * from Commodityclasses")
    List<Commodityclasses> findAll();

    @Insert("insert into Commodityclasses values(#{commodityId} ,#{commodityClass} )")
    int addComClasses(Commodityclasses com);

    @Select("select * from Commodityclasses where commodityId=#{commodityId} ")
    Commodityclasses findCommodityById(int commodityId);

    @Update("update Commodityclasses set commodityId=#{commodityId},commoditClasses=#{commodityClass}  ")
    int updateComClasses(Commodityclasses com);

    @Delete("delete from Commodityclasses where commodityId=#{commodityId} ")
    int deleteComClass(int commodityId);

    @Delete("delete from Commodityclasses where commodityId=#{commodityIds}")
    int delComClasses(String[] commodityIds);

}

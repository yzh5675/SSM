package com.cs.ssm.mapper;

import com.cs.ssm.entity.Commoditys;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 14:10
 **/
public interface CommoditysMapper {
    @Select("select * from Commoditys")
    List<Commoditys> findAll();

    @Insert("insert into Commoditys values(#{commodityId} ,#{imgNum},#{commodityName} ,#{commodityClass} ,#{commodityDepict} ,#{commodityPrice} ,#{commodityAmount} ,#{commodityQuantity} ,#{commoditySpecs})")
    int addCom(Commoditys com);

    @Select("select * from Commoditys where commodityId=#{commodityId} ")
    Commoditys findComById(int commodityId);

    @Update("update Commoditys set imgNum=#{imgNum} , commodityName=#{commodityName} , commodityClass=#{commodityClass} , commodityDepict=#{commodityDepict} , commodityPrice=#{commodityPrice} , commodityAmount=#{commodityAmount} , commodityQuantity=#{commodityQuantity} , commoditySpecs=#{commoditySpecs}  where commodityId=#{commodityId} ")
    int updateCom(Commoditys com);

    @Delete("delete from Commoditys where commodityId=#{commodityId} ")
    int deleteCom(int commodityId);

    @Delete("delete from Commoditys where commodityId=#{commodityId} ")
    int delComs(String[] commodityIds);

    @Select("SELECT * FROM commoditys WHERE commodityClass like '%${searchClass}%'  AND commodityName LIKE '%${searchName}%'")
    List<Commoditys> findLikeCom(@Param("searchName") String searchName, @Param("searchClass") String searchClass);

}
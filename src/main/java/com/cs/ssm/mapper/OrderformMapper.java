package com.cs.ssm.mapper;

import com.cs.ssm.entity.Commoditys;
import com.cs.ssm.entity.Orderform;
import org.apache.ibatis.annotations.*;

import java.util.List;

/**
 * @author 姚志鸿 2093559162
 * @Date 2021/06/15/ 15:12
 **/
public interface OrderformMapper {

    @Select("select * from Orderform")
    List<Orderform> findAll();

    @Insert("insert into Orderform values(null,#{username} ,#{phone} ,#{OrderAddress} ,#{totalPrice} ,#{payMethod} ,#{submitTime} ,#{status} )")
    int addOrder(Orderform order);

    @Select("select * from Orderform where orderFormId=#{orderFormId} ")
    Orderform findOrderById(int orderFormId);

    @Update("update Orderform set username=#{username} , phone=#{phone} , OrderAddress=#{OrderAddress} , totalPrice=#{totalPrice} , payMethod=#{payMethod} , submitTime=#{submitTime} , status=#{status} ,  where orderFormId=#{orderFormId} ")
    int updateOrder(Orderform order);

    @Delete("delete from Orderform where orderFormId=#{orderFormId} ")
    int deleteOrder(int orderFormId);

    @Delete("delete from Orderform where orderFormId=#{orderFormIds} ")
    int delOrders(String[] orderFormIds);

    @Select("SELECT * FROM Orderform WHERE orderFormId like '%${searchOrderFormId}%' AND submitTime LIKE '%${searchSubmitTime}%'")
    List<Orderform> findLikeOrders(@Param("searchOrderFormId") String searchOrderFormId, @Param("searchSubmitTime") String searchSubmitTime);
}
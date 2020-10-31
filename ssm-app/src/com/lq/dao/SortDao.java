package com.lq.dao;

import com.lq.bean.*;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.springframework.stereotype.Repository;

import java.util.List;
@Repository
public interface SortDao {

    @Select("select * from sortone")
    List<Sortone> findAllSortone();
    @Select("select * from sorttwo")
    List<Sorttwo> findAllSortwo();
    @Select("select * from sortthree")
    List<Sortthree> findAllSorthree();

    @Select("select * from sort")
    List<Sort> findAllSort();

    @Select("select * from sort where one_id=#{one_id} and two_id=#{two_id} and three_id=#{three_id}")
    List<Sort> findAllSOrtByID(Sort sort);

    @Select("select * from sort where app_id=#{id}")
    Sort findByAppId(Integer id);

    @Select("select * from  sortone where id=#{one_id}")
    Sortone findByoneId(Integer one_id);

    @Select("select * from sorttwo where id=#{two_id}")
    Sorttwo findBytwoId(Integer two_id);

    @Select("select * from sortthree where id=#{three_id}")
    Sortthree findBythreeId(Integer three_id);

    @Insert("insert  into sort values(#{one},#{two},#{three},#{id})")
    void saveSOrtOneTwoThree(Application application);

    @Delete(" delete from sort where app_id=#{id} ")
    void deleteAppId(Application app)throws Exception;

    @Update("<script>update sort set app_id=#{id}" +
            "<if test='one!=null'>,one_id=#{one}</if>" +
            "<if test='two!=null'>,two_id=#{two}</if>" +
            "<if test='three!=null'>,three_id=#{three}</if>" +
            " where app_id=#{id}</script>")
    void updateAppId(Application app);
}

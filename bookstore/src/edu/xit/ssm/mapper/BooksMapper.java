package edu.xit.ssm.mapper;

import edu.xit.ssm.po.Books;
import edu.xit.ssm.po.BooksExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface BooksMapper {
    int countByExample(BooksExample example);

    int deleteByExample(BooksExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Books record);

    int insertSelective(Books record);

    List<Books> selectByExampleWithBLOBs(BooksExample example);

    List<Books> selectByExample(BooksExample example);

    Books selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Books record, @Param("example") BooksExample example);

    int updateByExampleWithBLOBs(@Param("record") Books record, @Param("example") BooksExample example);

    int updateByExample(@Param("record") Books record, @Param("example") BooksExample example);

    int updateByPrimaryKeySelective(Books record);

    int updateByPrimaryKeyWithBLOBs(Books record);

    int updateByPrimaryKey(Books record);
}
package com.csdj.mapper;

import com.csdj.pojo.Books;
import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

@Mapper
@Repository("mapper")
public interface BookMapper extends tk.mybatis.mapper.common.Mapper<Books> {
}

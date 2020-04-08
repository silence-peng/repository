package com.csdj.serviceImpl;

import com.csdj.mapper.BookMapper;
import com.csdj.pojo.Books;
import com.csdj.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    private BookMapper mapper;
    public List<Books> getData() {
        return mapper.selectAll();
    }

}

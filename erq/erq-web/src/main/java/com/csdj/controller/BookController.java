package com.csdj.controller;

import com.csdj.pojo.Books;
import com.csdj.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class BookController {
    @Autowired
    private BookService service;
    @RequestMapping("list")
    public List<Books> list(){
        List<Books> list=service.getData()
        return list;
    }
}

package com.domelist.dome.dto;

import java.util.Date;

public class MarketPostDto {
    private long id;
    private String title;
    private String writer;
    private String article;
    private Date reg_dttm;

    public MarketPostDto(){}

    public MarketPostDto(long id, String title, String writer, String article, Date reg_dttm) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.article = article;
        this.reg_dttm = reg_dttm;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getArticle() {
        return article;
    }

    public void setArticle(String article) {
        this.article = article;
    }

    public Date getReg_dttm() {
        return reg_dttm;
    }

    public void setReg_dttm(Date reg_dttm) {
        this.reg_dttm = reg_dttm;
    }
}

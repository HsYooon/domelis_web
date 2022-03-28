package com.domelist.dome.dto;

import java.util.Date;

public class MarketPostDto {
    private long id;
    private String title;
    private String writer;
    private String article;
    private String media;
    private String media_type;
    private String thumbnail;
    private String reg_dttm;

    public MarketPostDto(){}

    public MarketPostDto(long id, String title, String writer, String article, String media, String media_type, String thumbnail, String reg_dttm) {
        this.id = id;
        this.title = title;
        this.writer = writer;
        this.article = article;
        this.media = media;
        this.media_type = media_type;
        this.thumbnail = thumbnail;
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

    public String getMedia() {
        return media;
    }

    public void setMedia(String media) {
        this.media = media;
    }

    public String getMedia_type() {
        return media_type;
    }

    public void setMedia_type(String media_type) {
        this.media_type = media_type;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public String getReg_dttm() {
        return reg_dttm;
    }

    public void setReg_dttm(String reg_dttm) {
        this.reg_dttm = reg_dttm;
    }

    @Override
    public String toString() {
        return "MarketPostDto{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", writer='" + writer + '\'' +
                ", article='" + article + '\'' +
                ", media='" + media + '\'' +
                ", mediaType='" + media_type + '\'' +
                ", thumbnail='" + thumbnail + '\'' +
                ", reg_dttm=" + reg_dttm +
                '}';
    }
}

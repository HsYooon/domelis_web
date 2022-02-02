package com.domelist.dome.dto;

public class DomeDto {
    private Long id;
    private String name;
    private String img;
    private String url;
    private String title;
    private String category;

    public DomeDto() {
    }

    public DomeDto(Long id, String name, String img, String url, String title, String category) {
        this.id = id;
        this.name = name;
        this.img = img;
        this.url = url;
        this.title = title;
        this.category = category;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}

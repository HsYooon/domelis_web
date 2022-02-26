package com.domelist.dome.dto;

public class SiteInfoDto {

    private Long id;
    private String name;
    private String url;
    private String info;
    private String category;

    public SiteInfoDto() {}

    public SiteInfoDto(Long id, String name, String url, String info, String category) {
        this.id = id;
        this.name = name;
        this.url = url;
        this.info = info;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
}

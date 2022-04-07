package com.domelist.dome.dto;

public class CdDto {

    private int id;
    private String cd;
    private String name;

    public CdDto(int id, String cd, String name) {
        this.id = id;
        this.cd = cd;
        this.name = name;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCd() {
        return cd;
    }

    public void setCd(String cd) {
        this.cd = cd;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}

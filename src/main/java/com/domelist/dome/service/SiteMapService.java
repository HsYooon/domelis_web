package com.domelist.dome.service;

import com.domelist.dome.common.SiteMap;
import org.springframework.stereotype.Service;

import java.io.UnsupportedEncodingException;
import java.util.Date;

@Service
public class SiteMapService {
    public static final String BASE_URL = "http://localhost:8080";
    public static final String BEGIN_DOC = "<urlset xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\">";
    public static final String END_DOC = "</urlset>";
    public static final String CHANGEFREQ_ALWAYS = "always";
    public static final String CHANGEFREQ_HOURLY = "hourly";
    public static final String CHANGEFREQ_DAILY = "daily";
    public static final String CHANGEFREQ_WEEKLY = "weekly";
    public static final String CHANGEFREQ_MONTHLY = "monthly";
    public static final String CHANGEFREQ_YEARLY = "yearly";
    public static final String CHANGEFREQ_NEVER = "never";

    public String getSystemicSiteMap() throws UnsupportedEncodingException {
//        Date now = new Date();
        StringBuffer sb = new StringBuffer();
//        sb.append(BEGIN_DOC);
//        sb.append(new SiteMap(BASE_URL, now, CHANGEFREQ_NEVER, "1.0"));
        String xml = "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n" +
                "<urlset\n" +
                "      xmlns=\"http://www.sitemaps.org/schemas/sitemap/0.9\"\n" +
                "      xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\"\n" +
                "      xsi:schemaLocation=\"http://www.sitemaps.org/schemas/sitemap/0.9\n" +
                "            http://www.sitemaps.org/schemas/sitemap/0.9/sitemap.xsd\">\n" +
                "<!-- created with Free Online Sitemap Generator www.xml-sitemaps.com -->\n" +
                "\n" +
                "\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>1.00</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=01</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=02</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=04</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=06</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=09</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=03</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=11</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=12</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=10</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=08</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/siteinfo?cd=05</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/info</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/calendar</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/product</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/academy</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/business</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/program</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/delivery</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/delivery/abroad</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/delivery/domestic</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/advertise</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketing</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=156</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=155</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=154</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=153</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=152</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=141</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=136</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=135</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=133</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=108</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=107</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=106</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/login</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.80</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=2</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=3</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=4</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=5</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=6</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=2</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=3</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=4</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=5</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=6</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=147</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=146</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=145</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=144</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=120</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=119</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=118</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=117</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=150</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=148</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=143</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=142</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=140</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=139</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=138</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=137</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=105</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=104</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=103</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=102</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=116</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=115</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=114</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=113</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=112</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=111</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=110</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=109</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=134</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=132</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=131</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=130</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=129</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=128</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=127</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=126</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=125</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=124</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=123</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=121</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=157</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=151</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=149</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=122</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/marketInfo/post?id=101</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/delivery/request</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.64</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=1</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=7</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=8</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=9</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=10</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=11</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=1</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=7</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=8</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=9</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=10</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=11</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.51</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=12</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=13</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=14</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=15</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=16</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=12</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=13</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=14</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/best?page=15</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.41</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=17</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.33</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=18</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.33</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=19</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.33</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=20</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.33</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=21</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.33</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=22</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.26</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=23</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.26</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=24</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.26</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=25</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.26</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=26</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.26</priority>\n" +
                "</url>\n" +
                "<url>\n" +
                "  <loc>http://www.domaelist.com/product/new?page=27</loc>\n" +
                "  <lastmod>2022-05-11T09:37:57+00:00</lastmod>\n" +
                "  <priority>0.21</priority>\n" +
                "</url>\n" +
                "\n" +
                "\n" +
                "</urlset>\n";
        sb.append(xml);
        return sb.toString();
    }
}
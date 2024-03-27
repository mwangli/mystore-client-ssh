package com.lmw.beans;

import org.hibernate.annotations.Tables;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Table(name = "goods")
public class Goods {
    private int gid;
    private String name;
    private Double price;
    private String image;
    private String description;
    private Integer hot;

    @Id
    @Column(name = "gid")
    public int getGid() {
        return gid;
    }

    public void setGid(int gid) {
        this.gid = gid;
    }

    @Basic
    @Column(name = "name")
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Basic
    @Column(name = "price")
    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    @Basic
    @Column(name = "image")
    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Basic
    @Column(name = "description")
    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Basic
    @Column(name = "hot")
    public Integer getHot() {
        return hot;
    }

    public void setHot(Integer hot) {
        this.hot = hot;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Goods goods = (Goods) o;
        return gid == goods.gid &&
                Objects.equals(name, goods.name) &&
                Objects.equals(price, goods.price) &&
                Objects.equals(image, goods.image) &&
                Objects.equals(description, goods.description) &&
                Objects.equals(hot, goods.hot);
    }

    @Override
    public int hashCode() {
        return Objects.hash(gid, name, price, image, description, hot);
    }

    @Override
    public String toString() {
        return "Goods{" +
                "gid=" + gid +
                ", name='" + name + '\'' +
                ", price=" + price +
                ", image='" + image + '\'' +
                ", description='" + description + '\'' +
                ", hot=" + hot +
                '}';
    }
}

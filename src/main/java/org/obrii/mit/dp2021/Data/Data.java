package org.obrii.mit.dp2021.Data;

import java.io.Serializable;

public class Data implements Serializable {

    private int id;
    private String name;
    private int age;
    private String email;


    public Data(int id, String name, String email) {
        this.id=id;
        this.name = name;
        this.age = age;
        this.email = email;
    }

    public int getId() {
        return id;
    }
    public void setId(int id) {
        this.id = id;
    }


    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }


    public int getAge() {
        return age;
    }
    public void setAge(int age) {
        this.age = age;
    }


    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "Data{" + "id=" + id + ", name=" + name + ", age=" + age + ", email=" + email + '}';
    }





}
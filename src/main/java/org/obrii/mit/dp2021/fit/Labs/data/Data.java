    package org.obrii.mit.dp2021.fit.Labs.data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import java.io.Serializable;

@Entity
public class Data implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)

    private int id;
    private String name;
    private int age;
    private String email;

    public Data(int id, String name, String age, String email) {
    }

    public Data(int id, String name, int age, String email) {
        this.id = id;
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

    public int getAge() {
        return age;
    }

    public String getEmail() {
        return email;
    }



    @Override
    public String toString() {
        return "Data{" + "id = " + id + ", name = " + name + ", age = " + age + ", email = " + email + '}';
    }
}

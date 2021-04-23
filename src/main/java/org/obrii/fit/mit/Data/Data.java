    package org.obrii.fit.mit.Data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.NotBlank;
import java.io.Serializable;

@Entity
public class Data implements Serializable{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @NotBlank(message = "Id failed")
    private int id;
    @NotBlank(message = "First Name failed")
    private String firstName;
    @NotBlank(message = "Phone failed")
    private String phone;
    @NotBlank(message = "Date failed")
    private String date;

    public Data() {
    }

    public Data(int id, String firstName, String phone, String date) {
        this.id = id;
        this.firstName = firstName;
        this.phone = phone;
        this.date = date;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFirstName() {
        return firstName;
    }


    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getDate() {
        return date;
    }

    @Override
    public String toString() {
        return "Data{" + "id = " + id + ", firstName = " + firstName + ", phone = " + phone + ", date = " + date + '}';
    }
}

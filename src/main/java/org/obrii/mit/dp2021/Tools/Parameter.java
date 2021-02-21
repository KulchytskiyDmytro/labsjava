package org.obrii.mit.dp2021.Tools;

public class Parameter {
    public String name;
    public String email;
    public String item;

    public Parameter(String name, String email, String item) {
        this.name = name;
        this.email = email;
        this.item = item;
    }

    public String getItem() {
        return item;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }
}

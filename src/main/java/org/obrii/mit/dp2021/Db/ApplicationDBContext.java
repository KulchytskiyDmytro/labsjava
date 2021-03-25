package org.obrii.mit.dp2021.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class ApplicationDBContext {
    public static Connection connect(){
        Connection c = null;
        try{
            Class.forName("org.postgresql.Driver");
            c = DriverManager.getConnection("jdbc:postgresql://obrii.org:5432/DATABASE","USER","PASSWORD");
        }
        catch(Exception e){
            e.printStackTrace();
        }
        return c;
    }
}

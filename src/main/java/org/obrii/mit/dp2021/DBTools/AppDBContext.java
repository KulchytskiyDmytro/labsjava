package org.obrii.mit.dp2021.DBTools;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class AppDBContext {
    private static AppDBContext dbContext;

    public static final String driverClassName = "org.postgresql.Driver";

    //local
    //private static final String connectionUrl = "jdbc:postgresql://localhost:5432/testdatabase";
    //private static final String user = "postgres";
    //private static final String password = "admin";

    //obrii
    private static final String connectionUrl = "jdbc:postgresql://obrii.org:5432/db2021mit21s8";
    private static final String user = "s8";
    private static final String password = "6126";

    private AppDBContext() {
        try {
            Class.forName(driverClassName);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
    }

    public static AppDBContext getDbContext() {
        if (dbContext == null) {
            dbContext = new AppDBContext();
        }
        return dbContext;
    }

    public Connection connection() throws SQLException {
        return DriverManager.getConnection(connectionUrl, user, password);
    }
}

package org.obrii.mit.dp2021.Crud;


import org.obrii.mit.dp2021.DBTools.ToolsforDB;
import org.obrii.mit.dp2021.Data.Data;

import java.io.*;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DBCrud implements ICrudData{

    public DBCrud() {
        ToolsforDB.connectToDB();
        ToolsforDB.checkForCreatingTable(ToolsforDB.getTableName());
    }

    @Override
    public void createData(Data addingData) {
        ToolsforDB.SQLrequest(String.format("INSERT INTO " + ToolsforDB.getTableName() + " (id, name, age, email) VALUES ('%s', '%s', '%s', '%s');",
                addingData.getId(), addingData.getName(), addingData.getAge(), addingData.getEmail()));
    }

    @Override
    public List<Data> readData() {
        try {
            ResultSet result = ToolsforDB.getStatement().executeQuery(String.format("SELECT * FROM %s", ToolsforDB.getTableName()));
            List<Data> data = new ArrayList<>();

            while (result.next()) {
                data.add(new Data(
                        result.getInt("id"),
                        result.getString("name"),
                        result.getString("age"),
                        result.getString("email")
                ));
            }
            return data;
        } catch (SQLException e) {
            return new ArrayList<>();
        }
    }

    @Override
    public void updateData(int id, Data data) {
        ToolsforDB.SQLrequest(String.format("UPDATE " + ToolsforDB.getTableName()+ " "
                + "SET firstName='" + data.getId() + "' , "
                + "lastName=" + data.getName() + " , "
                + "phone='" + data.getAge() + "' , "
                + "date='" + data.getEmail() + "' "
                + "WHERE id=" + id)
        );
    }

    @Override
    public void deleteData(int id) {
        ToolsforDB.SQLrequest("DELETE FROM " + ToolsforDB.getTableName() + " WHERE id=" + id);
    }

    public List<Data> sortData(String keyword) {
        List<Data> newData = new ArrayList<>();
        for (Data d : readData()) {
            if (d.getName().contains(keyword)) {
                newData.add(d);
            }
        }
        return newData;
    }
}
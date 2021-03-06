package org.obrii.mit.dp2021.Crud;

import org.obrii.mit.dp2021.Data.Data;

import java.util.List;

public interface ICrudData {

    void createData(Data addingData);

    List<Data> readData();

    void updateData(int id, Data data);

    void deleteData(int id);

    void writeData(List<Data> data);

    public List<Data> sortData(String phrase);
}

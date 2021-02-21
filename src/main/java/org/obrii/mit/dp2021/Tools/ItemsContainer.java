package org.obrii.mit.dp2021.Tools;

import org.obrii.mit.dp2021.interfaces.IContainer;
import org.obrii.mit.dp2021.interfaces.IItems;
import org.obrii.mit.dp2021.Items.Cakes;
import org.obrii.mit.dp2021.Items.Chocolate;
import org.obrii.mit.dp2021.Items.Pancakes;
import org.obrii.mit.dp2021.Items.Tears;

import java.util.ArrayList;
import java.util.List;

public class ItemsContainer implements IContainer {
    @Override
    public List<IItems> getItems() {

        List<IItems> items = new ArrayList<>();

        if(items == null){
            items.add(new Cakes());
            items.add(new Chocolate());
            items.add(new Pancakes());
            items.add(new Tears());
            return items;
        }
        try{}catch(NullPointerException e){
            items.add(new Cakes());
            items.add(new Chocolate());
            items.add(new Pancakes());
            items.add(new Tears());

            return items;
        }
        return items;

    }
}

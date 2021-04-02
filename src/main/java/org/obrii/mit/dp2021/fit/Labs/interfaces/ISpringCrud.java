package org.obrii.mit.dp2021.fit.Labs.interfaces;

import org.obrii.mit.dp2021.fit.Labs.data.Data;
import org.springframework.data.repository.CrudRepository;

public interface ISpringCrud extends CrudRepository<Data, Integer> {
}

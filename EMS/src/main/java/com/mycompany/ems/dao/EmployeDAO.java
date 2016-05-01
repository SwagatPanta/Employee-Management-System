/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.dao;

import com.mycompany.ems.entity.Employe;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author Dell
 */
public interface EmployeDAO {

    int insert(Employe d) throws SQLException, ClassNotFoundException;

    int update(Employe d) throws SQLException, ClassNotFoundException;

    void delete(Employe d) throws SQLException, ClassNotFoundException;

    List<Employe> getAll() throws SQLException, ClassNotFoundException;

    Employe getById(int id) throws SQLException, ClassNotFoundException;

    Employe mapData(ResultSet rs) throws SQLException, ClassNotFoundException;
}

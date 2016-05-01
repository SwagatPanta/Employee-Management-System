/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.ems.entity;

import javax.print.attribute.standard.DateTimeAtCreation;

/**
 *
 * @author Dell
 */
public class EmployeSalary {

    private int id;
    private int employeId;
    private float salary;
    private DateTimeAtCreation addedDate;

    public EmployeSalary() {
    }

    public EmployeSalary(int id, int employeId, float salary) {
        this.id = id;
        this.employeId = employeId;
        this.salary = salary;
    }

    public DateTimeAtCreation getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(DateTimeAtCreation addedDate) {
        this.addedDate = addedDate;
    }

    public int getEmployeId() {
        return employeId;
    }

    public void setEmployeId(int employeId) {
        this.employeId = employeId;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public float getSalary() {
        return salary;
    }

    public void setSalary(float salary) {
        this.salary = salary;
    }

    @Override
    public String toString() {
        return "EmployeSalary{" + "id=" + id + ", employeId=" + employeId + ", salary=" + salary + ", addedDate=" + addedDate + '}';
    }
}


package com.config;

import org.springframework.jdbc.datasource.DriverManagerDataSource;


public class db_connection {
    public DriverManagerDataSource db_connector() {
        DriverManagerDataSource dataSource = new DriverManagerDataSource();
        dataSource.setDriverClassName("com.mysql.jdbc.Driver");
        dataSource.setUrl("jdbc:mysql://localhost:3306/db_uml");
        dataSource.setUsername("root");
        dataSource.setPassword("");
        return dataSource;
    }
}

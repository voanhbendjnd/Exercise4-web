package com.javaweb.repository.custom.impl;

import com.javaweb.repository.RentAreaRepository;
import com.javaweb.utils.ConnectionJDBC;
import org.springframework.stereotype.Repository;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.javaweb.repository.RentAreaRepository;
import com.javaweb.entity.RentAreaEntity;
@Repository
public class RentAreaRepositoryImpl implements RentAreaRepository {

    @Override
    public List<RentAreaEntity> getValueByBuildingId(Long id) {
        // TODO Auto-generated method stub
        StringBuilder sql = new StringBuilder("select * from rentarea where rentarea.buildingid = " + id);
        List<RentAreaEntity> rentAreas = new ArrayList<>();
        try(Connection con = ConnectionJDBC.getConnection()){
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql.toString());
            while(rs.next()) {
                RentAreaEntity rent = new RentAreaEntity();
                rent.setValue(rs.getString("value"));
                rentAreas.add(rent);
            }
        }catch(Exception ex) {
            System.out.println(ex);
        }
        return rentAreas;
    }

}
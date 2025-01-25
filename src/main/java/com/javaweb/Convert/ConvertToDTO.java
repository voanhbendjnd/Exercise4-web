package com.javaweb.Convert;
import com.javaweb.model.dto.BuildingDTO;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Component;
import java.util.List;
import java.util.stream.Collectors;

import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import com.javaweb.entity.RentAreaEntity;
import com.javaweb.repository.custom.impl.RentAreaRepositoryImpl;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.BuildingEntity;
@Component
//  dung de chuyen entity thanh dto tu database sang json
public class ConvertToDTO {
    private static ModelMapper modelMapper = new ModelMapper();
    private static RentAreaRepositoryImpl rent = new RentAreaRepositoryImpl();

    public static BuildingDTO ToDTO(BuildingEntity enty) {
        BuildingDTO building = modelMapper.map(enty, BuildingDTO.class); // chuyển dữ liệu từ Entity sang DTO
        building.setAddress(enty.getStreet() + ", " + enty.getWard() + ", " + enty.getDistrict());
        List<RentAreaEntity> rentAreas = enty.getRents();
        String resArea = rentAreas.stream().map(it -> it.getValue().toString()).collect(Collectors.joining(", "));
        building.setRentArea(resArea);

        return building;
    }
}

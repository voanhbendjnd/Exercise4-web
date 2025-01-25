package com.javaweb.repository;

import org.springframework.stereotype.Repository;
import com.javaweb.entity.RentAreaEntity;

import java.util.List;

@Repository
public interface RentAreaRepository {
    List<RentAreaEntity> getValueByBuildingId(Long id);

}

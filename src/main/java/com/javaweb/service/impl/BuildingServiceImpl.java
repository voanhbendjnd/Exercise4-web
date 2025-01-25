package com.javaweb.service.impl;

import com.javaweb.Convert.ConvertToDTO;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;
import com.javaweb.Convert.ConvertToDTO;
@Service
@Transactional
public class BuildingServiceImpl implements BuildingService {
    @Autowired
    private BuildingRepository buildingRepository;
    public BuildingServiceImpl(BuildingRepository buildingRepository) {
        this.buildingRepository = buildingRepository;
    }

    @Override
    public List<BuildingDTO> findAll(){
        List<BuildingEntity> entity = buildingRepository.findAll();
        return entity.stream()
                .map(ConvertToDTO::ToDTO)
                .collect(Collectors.toList());
    }
}

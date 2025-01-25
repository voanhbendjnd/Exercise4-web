package com.javaweb.service;

import com.javaweb.model.dto.BuildingDTO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service

public interface BuildingService {
    List<BuildingDTO> findAll();

}

package com.javaweb.service.impl;

import com.javaweb.Convert.ConvertToDTO;
import com.javaweb.entity.BuildingEntity;
import com.javaweb.entity.UserEntity;
import com.javaweb.entity.UserRoleEntity;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.model.response.StaffResponseDTO;
import com.javaweb.repository.BuildingRepository;
import com.javaweb.repository.UserRepository;
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
    // Autowrired
    @Autowired
    private BuildingRepository buildingRepository;
    @Autowired
    private UserRepository userRepository;


    @Override
    public List<BuildingDTO> findAll(){
        List<BuildingEntity> entity = buildingRepository.findAll();
        return entity.stream()
                .map(ConvertToDTO::ToDTO)
                .collect(Collectors.toList());
    }

    @Override
    public ResponseDTO listStaffs(Long buildingId) {
//        BuildingEntity entity = buildingRepository.findById(buildingId).get(); // tim id toa nha
        BuildingEntity building = buildingRepository.findById(buildingId).get();
        List<UserEntity> staffs = userRepository.findByStatusAndRoles_Code(1, "STAFF"); // tat ca nhan vien
        List<UserEntity> staffAssignment = building.getUserEntities(); // nhan vien dang quan li toa nha theo id / duyet ds
        List<StaffResponseDTO> staffResponseDTOS = new ArrayList<>();
        ResponseDTO responseDTO = new ResponseDTO();
        for(UserEntity it : staffs){
            StaffResponseDTO staffResponseDTO = new StaffResponseDTO();
            staffResponseDTO.setFullName(it.getFullName()); // name staff
            staffResponseDTO.setStaffId(it.getId()); // id staff
            if(staffAssignment.contains(it)){
                staffResponseDTO.setChecked("checked"); // check staff nao nam o trong staffass thi mark
            }
            else{
                staffResponseDTO.setChecked("");
            }
            staffResponseDTOS.add(staffResponseDTO);
        }
        responseDTO.setData(staffResponseDTOS);
        responseDTO.setMessage("success");
        return responseDTO;
    }
}

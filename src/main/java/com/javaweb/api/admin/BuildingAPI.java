package com.javaweb.api.admin;

import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.response.ResponseDTO;
import com.javaweb.service.BuildingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController(value = "buildingAPIOfAdmin")
@RequestMapping("/api/building")
public class BuildingAPI {
    @Autowired
    private BuildingService buildingService;

    // /api/building/
    @PostMapping
    public BuildingDTO addOrUpdateBuilding(@RequestBody BuildingDTO dtos){
        return dtos;
    }
    // /api/building/{ids}
    @DeleteMapping("/{ids}")
    public void deleteBuilding(@PathVariable List<Long> ids){

        System.out.println("nice");
    }
    @GetMapping("/{id}/staffs")
    public ResponseDTO loadStaffs(@PathVariable Long id) {
        ResponseDTO responseDTO = buildingService.listStaffs(id);
        return responseDTO;
    }
}

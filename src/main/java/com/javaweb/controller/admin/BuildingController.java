package com.javaweb.controller.admin;



import com.javaweb.enums.buildingType;
import com.javaweb.enums.districtCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.service.BuildingService;
import com.javaweb.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.List;

// when call web another you must be used method GET
@Controller(value="buildingControllerOfAdmin")
public class BuildingController {
//    @Autowired
//    private BuildingService buildingService;
//
//    @GetMapping(value = "/admin/building-list")
//    public ModelAndView buildingList(BuildingDTO dtos, HttpServletRequest request) {
//        ModelAndView mav = new ModelAndView("admin/building-list");
//        mav.addObject("modelSearch", dtos);
//        mav.addObject("buildingList", buildingService.findAll());
//        return mav;
//    }
    @Autowired
    private IUserService userService;
    @GetMapping(value = "/admin/building-list")
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest requestdto, HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/list");
        mav.addObject("modelSearch", requestdto);
        List<BuildingSearchResponse> response = new ArrayList<>();
        BuildingSearchResponse it1 = new BuildingSearchResponse();
        it1.setId(1L);
        it1.setName("ACM Tower");
        it1.setAddress("Can Tho, Quan 1");
        it1.setFloorArea(123L);
        it1.setManagerPhone("090902434");
        it1.setEmptyArea("123");
        it1.setRentArea("100, 200, 300");
        it1.setManagerName("Ong Trumb");
        it1.setServiceFee("3.5%");
        BuildingSearchResponse it2 = new BuildingSearchResponse();
        it2.setId(2L);
        it2.setName("Building Tower");
        it2.setAddress("Can Tho, Quan Cai Rang");
        it2.setFloorArea(123L);
        it2.setManagerPhone("0909024344");
        it2.setEmptyArea("353");
        it2.setRentArea("40, 500, 200");
        it2.setManagerName("Ong Obama");
        it2.setServiceFee("100.5%");
        response.add(it1);
        response.add(it2);
        mav.addObject("buildingList", response);
        mav.addObject("staffList", userService.getStaffs());
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        return mav;
    }

    @GetMapping(value = "/admin/building-edit")
    public ModelAndView buildingEdit(@ModelAttribute("buildingEdit")BuildingDTO buildingDTO,HttpServletRequest request) {
        ModelAndView mav = new ModelAndView("admin/building/edit");
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        return mav;
    }
    @GetMapping(value = "/admin/building-edit-{id}")
//    @RequestMapping(value = "/admin/building-edit-{id}", method = RequestMethod.GET)
    public ModelAndView buildingEdit(@PathVariable("id") Long Id, HttpServletRequest request){
        ModelAndView mav = new ModelAndView("admin/building/edit");
        BuildingDTO dto = new BuildingDTO();
        dto.setId(Id);
        dto.setName("Five start BEN BEN");

        mav.addObject("buildingEdit", dto);
        mav.addObject("districts", districtCode.type());
        mav.addObject("typeCodes", buildingType.type());
        return mav;
    }
//@GetMapping(value = {"/admin/building-edit", "/admin/building-edit/{id}"})
//public ModelAndView buildingEdit(@PathVariable(required = false) Long id) {
//    ModelAndView mav = new ModelAndView("admin/building/edit");
//    BuildingDTO dto = new BuildingDTO();
//
//    if (id != null) {
//        dto.setId(id);
//        dto.setName("Five star BEN BEN");
//    }
//
//    mav.addObject("buildingEdit", dto);
//    return mav;
//}
//
//    @PostMapping(value = "/admin/building-save")
//    public String saveBuilding(@ModelAttribute BuildingDTO buildingDTO) {
//        // Save logic here
//        // Redirect to the building list page after saving
//        return "redirect:/admin/building-list";
//    }
}

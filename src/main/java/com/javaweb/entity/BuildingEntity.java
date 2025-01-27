package com.javaweb.entity;
import com.javaweb.entity.RentAreaEntity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;


import javax.persistence.*;

@Entity
@Table(name = "building")
public class BuildingEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "name", nullable = false)
    private String name;

    @Column(name = "managername")
    private String managername;

    @Column(name = "managerphone")
    private String managerphone;

    @Column(name = "ward")
    private String ward;

    @Column(name = "street")
    private String street;

//    @Column(name = "district")
//    private String district;
//
//    @Column(name = "structure")
//    private String structure;
//
//    @Column(name = "numberofbasement")
//    private Integer numberofbasement;
//
//    @Column(name = "floorarea")
//    private Integer floorarea;
//
//    @Column(name = "direction")
//    private String direction;
//
//
//    @Column(name = "level")
//    private Long level;
//
//    @Column(name = "rentprice")
//    private Integer rentprice;
//
//    @Column(name = "rentpricedescription")
//    private String rentpricedescription;
//
//    @Column(name = "servicefee")
//    private String servicefee;
//
//    @Column(name = "carfee")
//    private String carfee;
//
//    @Column(name = "motofee")
//    private String motofee;
//
//    @Column(name = "overtimefee")
//    private String overtimefee;
//
//    @Column(name = "waterfee")
//    private String waterfee;
//
//    @Column(name = "electricityfee")
//    private String electricityfee;
//
//    @Column(name = "deposit")
//    private String deposit;
//
//    @Column(name = "payment")
//    private String payment;
//
//    @Column(name = "renttime")
//    private String renttime;
//
//    @Column(name = "decorationtime")
//    private String decorationtime;
//
//    @Column(name = "brokeragefee")
//    private Long brokeragefee;
//
//    @Column(name = "type")
//    private String type;
//
//    @Column(name = "note")
//    private String note;
//
//    @Column(name = "linkofbuilding")
//    private String linkofbuilding;
//
//    @Column(name = "map")
//    private String map;
//
//    @Column(name = "avatar")
//    private String avatar;
//
//    @Column(name = "createddate")
//    private String createddate;
//
//
//    @Column(name = "modifieddate")
//    private String modifieddate;
//
//    @Column(name = "createdby")
//    private LocalDate createdby;
//
//    @Column(name = "modifiedby")
//    private LocalDate modifiedby;

//    @OneToMany(mappedBy = "building", fetch = FetchType.LAZY)
//    private List<RentAreaEntity> rents = new ArrayList<>();

//    @OneToMany(fetch = FetchType.LAZY, mappedBy = "buildingEntity")
//    List<AssignmentBuildingEntity> assignmentBuildingEntities = new ArrayList<>();
    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "assignmentbuilding",
        joinColumns = @JoinColumn(name = "buildingid", nullable = false),
            inverseJoinColumns = @JoinColumn(name = "staffid", nullable = false)
    )
    private List<UserEntity> userEntities = new ArrayList<>();
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getManagername() {
        return managername;
    }

    public void setManagername(String managername) {
        this.managername = managername;
    }

    public String getManagerphone() {
        return managerphone;
    }

    public void setManagerphone(String managerphone) {
        this.managerphone = managerphone;
    }

    public String getWard() {
        return ward;
    }

    public void setWard(String ward) {
        this.ward = ward;
    }

    public String getStreet() {
        return street;
    }

    public void setStreet(String street) {
        this.street = street;
    }

//    public String getDistrict() {
//        return district;
//    }
//
//    public void setDistrict(String district) {
//        this.district = district;
//    }
//
//    public String getStructure() {
//        return structure;
//    }
//
//    public void setStructure(String structure) {
//        this.structure = structure;
//    }
//
//
//
//    public String getDirection() {
//        return direction;
//    }
//
//    public Integer getNumberofbasement() {
//        return numberofbasement;
//    }
//
//    public void setNumberofbasement(Integer numberofbasement) {
//        this.numberofbasement = numberofbasement;
//    }
//
//    public Integer getFloorarea() {
//        return floorarea;
//    }
//
//    public void setFloorarea(Integer floorarea) {
//        this.floorarea = floorarea;
//    }
//
//    public Integer getRentprice() {
//        return rentprice;
//    }
//
//    public void setRentprice(Integer rentprice) {
//        this.rentprice = rentprice;
//    }

//    public LocalDate getCreatedby() {
//        return createdby;
//    }
//
//    public void setCreatedby(LocalDate createdby) {
//        this.createdby = createdby;
//    }
//
//    public LocalDate getModifiedby() {
//        return modifiedby;
//    }
//
//    public void setModifiedby(LocalDate modifiedby) {
//        this.modifiedby = modifiedby;
//    }

//    public void setDirection(String direction) {
//        this.direction = direction;
//    }
//
//    public Long getLevel() {
//        return level;
//    }
//
//    public void setLevel(Long level) {
//        this.level = level;
//    }
//
//
//
//    public String getRentpricedescription() {
//        return rentpricedescription;
//    }
//
//    public void setRentpricedescription(String rentpricedescription) {
//        this.rentpricedescription = rentpricedescription;
//    }
//
//    public String getServicefee() {
//        return servicefee;
//    }
//
//    public void setServicefee(String servicefee) {
//        this.servicefee = servicefee;
//    }
//
//    public String getCarfee() {
//        return carfee;
//    }
//
//    public void setCarfee(String carfee) {
//        this.carfee = carfee;
//    }
//
//    public String getMotofee() {
//        return motofee;
//    }
//
//    public void setMotofee(String motofee) {
//        this.motofee = motofee;
//    }
//
//    public String getOvertimefee() {
//        return overtimefee;
//    }
//
//    public void setOvertimefee(String overtimefee) {
//        this.overtimefee = overtimefee;
//    }
//
//    public String getWaterfee() {
//        return waterfee;
//    }
//
//    public void setWaterfee(String waterfee) {
//        this.waterfee = waterfee;
//    }
//
//    public String getElectricityfee() {
//        return electricityfee;
//    }
//
//    public void setElectricityfee(String electricityfee) {
//        this.electricityfee = electricityfee;
//    }
//
//    public String getDeposit() {
//        return deposit;
//    }
//
//    public void setDeposit(String deposit) {
//        this.deposit = deposit;
//    }
//
//    public String getPayment() {
//        return payment;
//    }
//
//    public void setPayment(String payment) {
//        this.payment = payment;
//    }
//
//    public String getRenttime() {
//        return renttime;
//    }
//
//    public void setRenttime(String renttime) {
//        this.renttime = renttime;
//    }
//
//    public String getDecorationtime() {
//        return decorationtime;
//    }
//
//    public void setDecorationtime(String decorationtime) {
//        this.decorationtime = decorationtime;
//    }
//
//    public Long getBrokeragefee() {
//        return brokeragefee;
//    }
//
//    public void setBrokeragefee(Long brokeragefee) {
//        this.brokeragefee = brokeragefee;
//    }
//
//    public String getType() {
//        return type;
//    }
//
//    public void setType(String type) {
//        this.type = type;
//    }
//
//    public String getNote() {
//        return note;
//    }
//
//    public void setNote(String note) {
//        this.note = note;
//    }
//
//    public String getLinkofbuilding() {
//        return linkofbuilding;
//    }
//
//    public void setLinkofbuilding(String linkofbuilding) {
//        this.linkofbuilding = linkofbuilding;
//    }
//
//    public String getMap() {
//        return map;
//    }
//
//    public void setMap(String map) {
//        this.map = map;
//    }
//
//    public String getAvatar() {
//        return avatar;
//    }
//
//    public void setAvatar(String avatar) {
//        this.avatar = avatar;
//    }
//
//    public String getCreateddate() {
//        return createddate;
//    }
//
//    public void setCreateddate(String createddate) {
//        this.createddate = createddate;
//    }
//
//    public String getModifieddate() {
//        return modifieddate;
//    }
//
//    public void setModifieddate(String modifieddate) {
//        this.modifieddate = modifieddate;
//    }


//    public List<RentAreaEntity> getRents() {
//        return rents;
//    }
//
//    public void setRents(List<RentAreaEntity> rents) {
//        this.rents = rents;
//    }

    public List<UserEntity> getUserEntities() {
        return userEntities;
    }

    public void setUserEntities(List<UserEntity> userEntities) {
        this.userEntities = userEntities;
    }
}
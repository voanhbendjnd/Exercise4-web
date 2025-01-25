package com.javaweb.entity;


import javax.persistence.*;
import javax.persistence.GeneratedValue;
import javax.persistence.Table;
import java.time.LocalDate;

@Entity
@Table(name = "user_role")
public class UserRoleEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "user_id", nullable = false)
    private UserEntity users;

	@ManyToOne
    @JoinColumn(name = "role_id", nullable = false)
    private RoleEntity roles;
    @Column(name = "createddate")
    private LocalDate createddate;

    @Column(name = "modifieddate")
    private LocalDate modifieddate;

    public String getCreatedby() {
        return createdby;
    }

    public void setCreatedby(String createdby) {
        this.createdby = createdby;
    }

    public LocalDate getCreateddate() {
        return createddate;
    }

    public void setCreateddate(LocalDate createddate) {
        this.createddate = createddate;
    }

    public LocalDate getModifieddate() {
        return modifieddate;
    }

    public void setModifieddate(LocalDate modifieddate) {
        this.modifieddate = modifieddate;
    }

    public String getModifiedby() {
        return modifiedby;
    }

    public void setModifiedby(String modifiedby) {
        this.modifiedby = modifiedby;
    }

    @Column(name = "createdby")
    private String createdby;

    @Column(name = "modifiedby")
    private String modifiedby;

    public UserEntity getUsers() {
        return users;
    }

    public void setUsers(UserEntity users) {
        this.users = users;
    }

    public RoleEntity getRoles() {
        return roles;
    }

    public void setRoles(RoleEntity roles) {
        this.roles = roles;
    }

    public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}


}

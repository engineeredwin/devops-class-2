package com.gtitechnet.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.gtitechnet.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}

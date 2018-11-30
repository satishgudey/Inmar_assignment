package com.Inmarit.account.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.Inmarit.account.model.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
}

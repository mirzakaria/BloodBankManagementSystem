package com.zakaria.BloodBank.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.zakaria.BloodBank.model.Donor;

@Repository
public interface DonorRepository extends JpaRepository<Donor, Long>{
	
	List<Donor> findByBloodGroup(String bloodGroup);

}

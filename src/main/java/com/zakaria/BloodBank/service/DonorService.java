package com.zakaria.BloodBank.service;

import java.util.List;

import com.zakaria.BloodBank.model.Donor;

public interface DonorService {

	List<Donor> getAllDonor();

	Donor saveDonor(Donor donor);
	
	List<Donor> getDonorByBloodGroup(String bloodGroup);
	
	Donor getDonorById(Long id);
	
	Donor saveOrUpdateDonor(Donor donor);
	
	void deleteDonorById(Long id);
}

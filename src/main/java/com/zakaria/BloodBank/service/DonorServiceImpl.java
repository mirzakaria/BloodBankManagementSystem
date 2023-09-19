package com.zakaria.BloodBank.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.zakaria.BloodBank.model.Donor;
import com.zakaria.BloodBank.repository.DonorRepository;

@Service
public class DonorServiceImpl implements DonorService{
	
	@Autowired
	private DonorRepository donorRepository;

	@Override
	public List<Donor> getAllDonor() {
		
		return donorRepository.findAll();
	}

	@Override
	public Donor saveDonor(Donor donor) {
		
		return donorRepository.save(donor);
	}

	@Override
	public List<Donor> getDonorByBloodGroup(String bloodGroup) {
		
		return donorRepository.findByBloodGroup(bloodGroup);
	}

	@Override
	public Donor getDonorById(Long id) {
		Donor donor = donorRepository.findById(id).get();
		return donor;
	}

	@Override
	public Donor saveOrUpdateDonor(Donor donor) {

		return donorRepository.save(donor);
	}

	@Override
	public void deleteDonorById(Long id) {

		donorRepository.deleteById(id);
		
	}

	
}

package com.zakaria.BloodBank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.zakaria.BloodBank.model.Donor;
import com.zakaria.BloodBank.service.DonorService;

@Controller
public class DonorController {
	@Autowired
	private DonorService donorService;

	@RequestMapping("/")
	public String home() {
		return "index";
	}

	@RequestMapping("/getRegisterPage")
	public String getRegisterPage() {

		return "registration";
	}

	@PostMapping("/addNewDonor")
	public String addNewDonor(Donor donor) {
		donorService.saveDonor(donor);
		System.out.println(donor);
		return "index";
	}

	@GetMapping("/allDonor")
	public ModelAndView getAllDonors() {
		ModelAndView model = new ModelAndView("all-donor");
		List<Donor> allDonor = donorService.getAllDonor();
		model.addObject("allDonor", allDonor);

//		System.out.println(allDonor);
		return model;
	}

	@GetMapping("/findByGroup/{bloodGroup}")
	public ModelAndView getDonorByGroup(@PathVariable("bloodGroup") String bloodGroup) {

		ModelAndView model = new ModelAndView("donor-by-group");
		model.addObject("bloodGroup", bloodGroup);
		model.addObject("donorByGroup", donorService.getDonorByBloodGroup(bloodGroup));

//		System.out.println(donorService.getDonorByBloodGroup(bloodGroup));
		return model;
		
	}
	
	@GetMapping("editDonorForm/{id}")
	public String getEditForm(@PathVariable Long id, Model model) {
		model.addAttribute("donor", donorService.getDonorById(id));
		
		return "edit-form";
	}
	
	@PostMapping("/updateDonor/{id}")
	public String updateDonorInfo(@PathVariable Long id,
			@ModelAttribute("donor") Donor donor,
			Model model) {
		Donor existDonor = donorService.getDonorById(id);
		
		existDonor.setDonorId(id);
		existDonor.setDonorName(donor.getDonorName());
		existDonor.setAge(donor.getAge());
		existDonor.setBloodGroup(donor.getBloodGroup());
		existDonor.setContact(donor.getContact());
		existDonor.setDistrict(donor.getDistrict());
		
		
		donorService.saveOrUpdateDonor(existDonor);
//		System.out.println(donor);
		return "index";
	}
	
	
	@GetMapping("deleteDonor/{id}")
	public String deleteDonor(@PathVariable Long id) {
		
		donorService.deleteDonorById(id);
		
		return "redirect:/allDonor";
	}

}

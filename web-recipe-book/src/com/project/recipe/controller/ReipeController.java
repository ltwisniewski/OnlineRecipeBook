package com.project.recipe.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.project.recipe.entity.Recipe;
import com.project.recipe.service.RecipeService;

@Controller
@RequestMapping("/recipe")
public class ReipeController {
	
	@Autowired
	private RecipeService recipeService;
	
	@GetMapping(value="/list", produces = "text/plain;charset=UTF-8")
	public String listRecipes(Model theModel) {
		
		List<Recipe> theRecipes = recipeService.getRecipes();
				
		theModel.addAttribute("recipes", theRecipes);
		
		return "list-recipes";
	}
	
	@GetMapping(value="/showFormForAdd", produces = "text/plain;charset=UTF-8")
	public String showFormForAdd(Model theModel) {
		
		Recipe theRecipe = new Recipe();
		
		theModel.addAttribute("recipe", theRecipe);
		
		return "recipe-form";
	}
	
	@PostMapping(value="/saveRecipe", produces = "text/plain;charset=UTF-8")
	public String saveRecipe(@Valid @ModelAttribute("recipe") Recipe theRecipe, BindingResult theBindingResult) {
	

		if(theBindingResult.hasErrors()) {
			return "recipe-form";
		}
		else {
			recipeService.saveRecipe(theRecipe);
			return "redirect:/recipe/list";
		}
	}
	
	@GetMapping(value= "/showFormForUpdate", produces = "text/plain;charset=UTF-8")
	public String showFormForUpdate(@Valid @RequestParam("recipeId") int theId, Model theModel) {
		
		Recipe theRecipe = recipeService.getRecipe(theId);
		
		theModel.addAttribute("recipe", theRecipe);
		
		return "recipe-form";
	}
	
	@GetMapping("/delete")
	public String deleteRecipe(@RequestParam("recipeId") int theId) {
			
		recipeService.deleteRecipe(theId);
		
		return "redirect:/recipe/list";
	}

	@GetMapping("/details")
	public String detils(@RequestParam("recipeId") int theId, Model theModel) {
		
		Recipe theRecipe = recipeService.getRecipe(theId);
		
		theModel.addAttribute("recipeDetails", theRecipe);
		
		return "recipe-details";
	}
}




















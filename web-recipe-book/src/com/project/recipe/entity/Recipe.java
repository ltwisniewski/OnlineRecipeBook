package com.project.recipe.entity;

import java.util.LinkedHashMap;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@Entity
@Table(name="recipe")
public class Recipe {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="recipe_id")
	private int id;
	
	@NotNull(message="Pole jest wymagane")
	@Size(min=1, message="Pole jest wymagane")
	@Column(name="dish_name")
	private String dishName;
	
	@NotNull(message="Pole jest wymagane")
	@Size(min=1, message="Pole jest wymagane")
	@Column(name="type_of_dish")
	private String typeOfDish;

	@Column(name="difficulty_level")
	private String difficultyLevel;
	
	@NotNull(message="Pole jest wymagane")
	@Size(min=1, message="Pole jest wymagane")
	@Column(name="ingredients")
	private String ingredients;
	
	@Min(value=1, message="Czas przygotowania musi byæ d³u¿szy ni¿ zero")
	@Max(value=240, message="Czas przygotowania nie mo¿e byæ d³u¿szy ni¿ 240 minut")
	@Column(name="preparation_time")
	private int preparationTime;
	
	@NotNull(message="Pole jest wymagane")
	@Size(min=1, message="Pole jest wymagane")
	@Column(name="description")
	private String description;
	
	@Column(name="photo_directory")
	private String photoDirectory;
	
	@NotNull(message="Pole jest wymagane")
	@Size(min=1, message="Pole jest wymagane")
	@Column(name="author_nick")
	private String authorNick;

	@Transient
	private LinkedHashMap<String, String> difficultyLevelPossibilities;
	
	public Recipe() {
		
		difficultyLevelPossibilities = new LinkedHashMap<>();
		
		difficultyLevelPossibilities.put("£atwy", "£atwy");
		difficultyLevelPossibilities.put("Œredni", "Œredni");
		difficultyLevelPossibilities.put("Trudny", "Trudny");
	}
	
	public LinkedHashMap<String, String> getDifficultyLevelPossibilities() {
		return difficultyLevelPossibilities;
	}

	public String getDishName() {
		return dishName;
	}

	public void setDishName(String dishName) {
		this.dishName = dishName;
	}

	public String getTypeOfDish() {
		return typeOfDish;
	}

	public void setTypeOfDish(String typeOfDish) {
		this.typeOfDish = typeOfDish;
	}

	public String getDifficultyLevel() {
		return difficultyLevel;
	}

	public void setDifficultyLevel(String difficultyLevel) {
		this.difficultyLevel = difficultyLevel;
	}

	public String getIngredients() {
		return ingredients;
	}

	public void setIngredients(String ingredients) {
		this.ingredients = ingredients;
	}

	public int getPreparationTime() {
		return preparationTime;
	}

	public void setPreparationTime(int preparationTime) {
		this.preparationTime = preparationTime;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getPhotoDirectory() {
		return photoDirectory;
	}

	public void setPhotoDirectory(String photoDirectory) {
		this.photoDirectory = photoDirectory;
	}

	public String getAuthorNick() {
		return authorNick;
	}

	public void setAuthorNick(String authorNick) {
		this.authorNick = authorNick;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	@Override
	public String toString() {
		return "Recipe [id=" + id + ", dishName=" + dishName + ", typeOfDish=" + typeOfDish + ", difficultyLevel="
				+ difficultyLevel + ", ingredients=" + ingredients + ", preparationTime=" + preparationTime
				+ ", description=" + description + ", photoDirectory=" + photoDirectory + ", authorNick=" + authorNick
				+ ", difficultyLevelPossibilities=" + difficultyLevelPossibilities + "]";
	}
}

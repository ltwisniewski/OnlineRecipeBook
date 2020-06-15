package com.project.recipe.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.project.recipe.entity.Recipe;

@Repository
public class RecipeDAOImpl implements RecipeDAO {

	@Autowired
	private SessionFactory sessionFactory;
				
	@Override
	public List<Recipe> getRecipes() {
		
		Session currentSession = sessionFactory.getCurrentSession();
				
		Query<Recipe> theQuery = 
				currentSession.createQuery("FROM Recipe  order by dishName", Recipe.class); // order by dishName
		
		List<Recipe> recipes = theQuery.getResultList();
				
		System.out.println(recipes);
	
		return recipes;
	}
	
	@Override
	public void saveRecipe(Recipe theRecipe) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(theRecipe);
		
	}
	
	@Override
	public Recipe getRecipe(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		Recipe theRecipe = currentSession.get(Recipe.class, theId);
		
		return theRecipe;	
	}
	
	@Override
	public void deleteRecipe(int theId) {
		
		Session currentSession = sessionFactory.getCurrentSession();
		
		System.out.println("theid= " + theId);

		Query theQuery = currentSession.createQuery("delete from Recipe where id=:recipeId");
		theQuery.setParameter("recipeId", theId);
		
		theQuery.executeUpdate();
	}
	
}

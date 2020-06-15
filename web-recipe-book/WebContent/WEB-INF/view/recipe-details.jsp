<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Recipe details</title>
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath }/resources/css/style.css">
			
	<link type="text/css"
			rel="stylesheet"
			href="${pageContext.request.contextPath }/resources/css/add-recipe-style.css">
</head>
<body>

<div id="container">
		
		<h3>Recipe details:</h3>
	
			<table>
			
			<tbody>
				<tr>
					<td><label>Dish name:</label></td>
					<td> ${recipeDetails.dishName }</td>
				</tr>
				<tr>
					<td><label>Type of dish:</label></td>
					<td>${recipeDetails.typeOfDish }</td>
				</tr>
				<tr>
					<td><label>Difficulty level:</label></td>
					<td>${recipeDetails.difficultyLevel }</td>
				</tr>
				<tr>
					<td><label>Ingredients:</label></td>
					<td>${recipeDetails.ingredients }</td>
				</tr>
				<tr>
					<td><label>Preparation time:</label></td>
					<td>${recipeDetails.preparationTime }</td>
				</tr>
				<tr>
					<td><label>Description:</label></td>
					<td>${recipeDetails.description }</td>
				</tr>
				<tr>
					<td><label>Photo dir:</label></td>
					<td>${recipeDetails.photoDirectory }</td>
				</tr>
				<tr>
					<td><label>Author:</label></td>
					<td>${recipeDetails.authorNick }</td>
				</tr>
				<tr>
					<td><label></label></td>
					<td>
						<input type="button" value="Back to list"
							onclick="window.location.href='list'; return false;"
							class="add-button"
						/>
					</td>
				<!-- <a href="${pageContext.request.contextPath }/recipe/list">Back to list</a> -->	
				</tr>
			</tbody>
			
			</table>

</body>
</html>
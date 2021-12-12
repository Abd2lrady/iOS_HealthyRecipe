//
//  RecipeDetailsVC+ViewProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension RecipeDetailsVC: RecipeDetailsViewProtocol {

    func setIngredient(ingredient: [String]) {
        ingredientListTVDataSource.ingredients = ingredient
        ingredientListTV.reloadData()
    }
    
}

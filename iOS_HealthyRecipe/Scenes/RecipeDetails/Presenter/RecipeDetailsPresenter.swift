//
//  RecipeDetailsPresenter.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

class RecipeDetailsPresenter {
    
    weak var view: RecipeDetailsViewProtocol?
    var recipe: Recipe
    
    init(view: RecipeDetailsViewProtocol, recipe: Recipe) {
        self.view = view
        self.recipe = recipe
    }
}

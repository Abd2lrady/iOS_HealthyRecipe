//
//  SearchRecipePresenterProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

protocol SearchRecipePresenterProtocol {
    func getRecipes()
    func selectedRecipe(recipe: Recipe)
}

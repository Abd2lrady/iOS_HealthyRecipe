//
//  SearchRecipePresenterProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

protocol SearchRecipePresenterProtocol {
    var recipes: [Hit] { get }

    func viewLoaded()
    func getRecipes(search: String, filter: Filter?)
    func saveSearch(search: String)
    func selectedRecipe(recipeIndex: Int)
    func filterRecipes(filter: Filter?)
}

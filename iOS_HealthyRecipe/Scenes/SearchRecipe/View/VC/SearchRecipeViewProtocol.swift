//
//  SearchRecipeViewProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

protocol SearchRecipeViewProtocol: AnyObject {
    func recipesFetched()
    func searchesSaved()
    func recipesFiltered(recipes: [Hit])
    func navigateToRecipeDetails(recipe: Recipe)
    func showNoResult()
    func hideNoResult()
    var searchTextFieldDelegate: SearchTextFieldDelegate { get }
    var suggestionListDelegate: SuggestionListDelegate { get }
    var suggestionListDataSource: SuggestionListDataSource { get }
    var filterListDelegate: FilterListCVDelegate { get }
    var filterListDataSource: FilterListCVDataSource { get }
}

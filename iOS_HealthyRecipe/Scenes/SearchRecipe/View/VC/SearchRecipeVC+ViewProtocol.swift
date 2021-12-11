//
//  SearchRecipeVC+ViewProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension SearchRecipeVC: SearchRecipeViewProtocol {
    
    func showNoResult() {
        recipeListTV.isHidden = true
        noResultView.isHidden = false
    }
    
    func hideNoResult() {
        recipeListTV.isHidden = false
        noResultView.isHidden = true
    }
    
    func recipesFiltered(recipes: [Hit]) {
        if recipes.isEmpty {
            showNoResult()
        } else {
            recipeListDataSource.recipes = recipes
            recipeListTV.reloadData()
            hideNoResult()
        }
    }
    
    func recipesFetched() {
        recipeListDataSource.recipes = presenter.recipes
        recipeListTV.reloadData()
        hideNoResult()
    }
    
    func searchesSaved() {
        suggestionList.reloadData()
    }
}

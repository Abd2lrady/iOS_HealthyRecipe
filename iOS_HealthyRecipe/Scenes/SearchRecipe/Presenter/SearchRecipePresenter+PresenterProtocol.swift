//
//  SearchRecipePresenter+PresenterProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

extension SearchRecipePresenter: SearchRecipePresenterProtocol {
    
    func getRecipes(search: String, filter: Filter?) {
        interactor.getRecipe(for: search,
                             filter: filter) { [weak self] result in
            switch result {
            case.success(let response):
                guard let response = response else { return }
                self?.recipes = response
                self?.recipes.isEmpty ?? false ? self?.view?.showNoResult() : self?.view?.recipesFetched()
                
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func saveSearch(search: String) {
        view?.suggestionListDataSource.lastSearches = [search]
        UserDefaults.standard.set(view?.suggestionListDataSource.lastSearches,
                                  forKey: UserDefaultsKeys.lastSearches)
        view?.searchesSaved()

    }
    
    func selectedRecipe(recipeIndex: Int) {
        view?.navigateToRecipeDetails(recipe: recipes[recipeIndex].recipe)
    }
    
    func viewLoaded() {
        guard let lastSearches = UserDefaults.standard.object(forKey: UserDefaultsKeys.lastSearches) as? [String]
        else { return }
        
        view?.suggestionListDataSource.lastSearches = lastSearches
    }
    
    func filterRecipes(filter: Filter?) {
        guard let filter = filter else {
            view?.recipesFiltered(recipes: recipes)
            return }
        
        let filteredRecipes = recipes.filter { recipe in
            recipe.recipe.healthLabels.contains {
                let health: String
                switch filter {
                case .vegan:
                    health = "Vegan"
                case .keto:
                    health = "Keto-Friendly"
                case .lowSugar:
                    health = "Low Sugar"
                }
                return $0 == health
            }
        }
        filteredRecipes.isEmpty ? view?.showNoResult() :  view?.recipesFiltered(recipes: filteredRecipes)
    }
}

//
//  SearchRecipeCoordinator+.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

extension SearchRecipeCoordinator: CoordinatorProtocol {

    func coordinate() {
        let view = SearchRecipeVC()
        view.coordinatorDelegate = self
        let interactor = SearchRecipeInteractor()
        let presenter = SearchRecipePresenter(view: view,
                                              interactor: interactor)
        view.presenter = presenter
        router.push(view: view, animated: true)
    }
}

extension SearchRecipeCoordinator: SearchRecipeCoordinatorProtocol {
    func recipeDetails(for recipe: Recipe) {
        navigateToRecipeDetails(for: recipe)
    }
}

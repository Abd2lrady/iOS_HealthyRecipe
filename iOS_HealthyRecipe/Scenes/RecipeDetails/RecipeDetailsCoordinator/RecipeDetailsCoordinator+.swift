//
//  RecipeDetailsCoordinator+.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady 
//

import Foundation

extension RecipeDetailsCoordinator: CoordinatorProtocol {

    func coordinate() {
        let view = RecipeDetailsVC()
        view.coordinatorDelegate = self
        let presenter = RecipeDetailsPresenter(view: view,
                                               recipe: recipe)
        view.presenter = presenter
        router.push(view: view, animated: true)
    }
}

extension RecipeDetailsCoordinator: RecipeDetailsCoordinatorProtocol {
    
    func backButtonPushed() {
        parentCoordinator?.removeChild(coordinator: self)
        router.pop(animated: true)
    }
}

//
//  RecipeDetailsCoordinator.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

class RecipeDetailsCoordinator {
    var recipe: Recipe
    var childCoordinators = [CoordinatorProtocol]()
    var parentCoordinator: CoordinatorProtocol?
    let router: RouterProtocol
    
    init(parentCoordinator: CoordinatorProtocol,
         router: RouterProtocol,
         recipe: Recipe) {
        self.recipe = recipe
        self.parentCoordinator = parentCoordinator
        self.router = router
    }
}

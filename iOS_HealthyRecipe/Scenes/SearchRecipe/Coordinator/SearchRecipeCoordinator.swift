//
//  SearchRecipeCoordinator.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

class SearchRecipeCoordinator {
    var childCoordinators = [CoordinatorProtocol]()
    weak var parentCoordinator: CoordinatorProtocol?
    
    var router: RouterProtocol
    init(router: RouterProtocol, parentCoordinator: CoordinatorProtocol) {
        self.router = router
        self.parentCoordinator = parentCoordinator
    }
    
    func navigateToRecipeDetails(for recipe: Recipe) {
        let recipeDetailsCoordinator = RecipeDetailsCoordinator(parentCoordinator: self,
                                                                router: router,
                                                                recipe: recipe)
        childCoordinators.append(recipeDetailsCoordinator)
        recipeDetailsCoordinator.coordinate()
    }

}

//
//  AppCoodinator+.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady 
//

import Foundation
import UIKit

extension AppCoordinator: CoordinatorProtocol {
    
    func coordinate() {
        let navController = UINavigationController()
        let router = Router(navController: navController)
        let searchCoordinator = SearchRecipeCoordinator(router: router, parentCoordinator: self)
        searchCoordinator.coordinate()
        childCoordinators.append(searchCoordinator)
        window.rootViewController = navController
        window.makeKeyAndVisible()
    }
}

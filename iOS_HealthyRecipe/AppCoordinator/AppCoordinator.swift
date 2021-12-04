//
//  AppCoordinator.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit

class AppCoordinator {
    weak var parentCoordinator: CoordinatorProtocol?
    var childCoordinators = [CoordinatorProtocol]()
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
        self.parentCoordinator = nil
    }
    
}

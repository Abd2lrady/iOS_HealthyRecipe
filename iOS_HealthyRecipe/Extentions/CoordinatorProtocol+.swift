//
//  CoordinatorProtocol+.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

extension CoordinatorProtocol {
    func removeChild(coordinator: CoordinatorProtocol) {
        
        for (index, child) in childCoordinators.enumerated()
        where coordinator === child {
            childCoordinators.remove(at: index)
        }
    }
}

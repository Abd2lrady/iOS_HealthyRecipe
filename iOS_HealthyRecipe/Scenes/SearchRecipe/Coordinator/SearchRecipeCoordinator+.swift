//
//  SearchRecipeCoordinator+.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady on 04/12/2021.
//

import Foundation

extension SearchRecipeCoordinator: CoordinatorProtocol {

    func coordinate() {
        let view = SearchRecipeVC()
        let presenter = SearchRecipePresenter(view: view)
        view.presenter = presenter
        router.push(view: view, animated: true)
    }
    
}

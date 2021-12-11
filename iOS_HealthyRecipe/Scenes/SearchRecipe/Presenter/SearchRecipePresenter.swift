//
//  SearchRecipePresenter.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

class SearchRecipePresenter {
    weak var view: SearchRecipeViewProtocol?
    var recipes = [Hit]()
    var interactor = SearchRecipeInteractor()

    init(view: SearchRecipeViewProtocol) {
        self.view = view
    }
    
}

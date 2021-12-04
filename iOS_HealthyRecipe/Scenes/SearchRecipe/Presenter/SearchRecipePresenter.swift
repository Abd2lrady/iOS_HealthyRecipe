//
//  SearchRecipePresenter.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

class SearchRecipePresenter {
    weak var view: SearchRecipeViewProtocol?
    
    init(view: SearchRecipeViewProtocol) {
        self.view = view
    }
    
}

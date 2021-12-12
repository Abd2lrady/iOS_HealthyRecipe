//
//  RecipeDetailsPresenter+PresenterProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit
import Kingfisher

extension RecipeDetailsPresenter: RecipeDetailsPresenterProtocol {
    func viewLoaded() {
        view?.setIngredient(ingredient: recipe.ingredientLines)
        let imgURL = URL(string: recipe.image)
        view?.recipeImg.kf.setImage(with: imgURL,
                                    options: [.onlyFromCache])
    }
}

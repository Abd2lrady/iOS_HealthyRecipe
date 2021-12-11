//
//  RecipeDetailsVC+ViewProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

extension RecipeDetailsVC: RecipeDetailsViewProtocol {
    
    func setRecipeImage(img: UIImage) {
        recipeImg.contentMode = .scaleAspectFill
        recipeImg.image = img
    }
    
}

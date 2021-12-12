//
//  RecipeDetailsViewProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit

protocol RecipeDetailsViewProtocol: AnyObject {
    var recipeImg: UIImageView { get set }
    func setIngredient(ingredient: [String])
    
}

//
//  Recipe.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

struct Hit: Codable {
    let recipe: Recipe
}

struct Recipe: Codable {
    let label: String
    let image: String
    let source: String
    let url: String
    let healthLabels: [String]
    let ingredientLines: [String]
}

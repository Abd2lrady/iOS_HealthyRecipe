//
//  RecipeListDataSource.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady .
//

import UIKit
import Kingfisher

class RecipeListTVDataSource: NSObject {
    var recipes = [Hit]()
}

extension RecipeListTVDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: RecipeListTVCell.reuseID,
                                                 
                                                       for: indexPath) as? RecipeListTVCell
        else { fatalError("can`t dequeue recipe cell") }
        let recipe = recipes[indexPath.row].recipe
        configCell(cell: cell, recipe: recipe)
        
        return cell
    }
    
    private func configCell(cell: RecipeListTVCell, recipe: Recipe) {
        cell.heathyLabels = recipe.healthLabels
        cell.sourceLabel?.text = recipe.source
        cell.titleLabel?.text = recipe.label
        let imgURL = URL(string: recipe.image)
        cell.recipeImg?.kf.setImage(with: imgURL)
    }
    
}

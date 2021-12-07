//
//  RecipeTVCell.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady on 07/12/2021.
//

import UIKit

class RecipeTVCell: UITableViewCell {
    static let reuseID = "RecipeTVCell"
    
    @IBOutlet private weak var _recipeImg: UIImageView!
    @IBOutlet private weak var _titleLabel: UILabel!
    @IBOutlet private weak var _sourceLabel: UILabel!
    @IBOutlet private weak var _healthyLabelsCV: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    
    
}

extension RecipeTVCell {
    var recipeImg: UIImageView? {
        get {
            return _recipeImg
        } set {
            _recipeImg = newValue
        }
    }
    
    var titleLabel: UILabel? {
        get {
            return _titleLabel
        } set {
            _titleLabel = newValue
        }
    }
    
    var sourceLabel: UILabel? {
        get {
            return _sourceLabel
        } set {
            _sourceLabel = newValue
        }
    }
    
    var healthyLabelsCV: UICollectionView? {
        get {
            return _healthyLabelsCV
        } set {
            _healthyLabelsCV = newValue
        }
    }
    
    
}

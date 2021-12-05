//
//  FilterCVCell.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady on 05/12/2021.
//

import UIKit

class FilterCVCell: UICollectionViewCell {

    @IBOutlet private weak var _filterLabel: UILabel!
    @IBOutlet private weak var _containerView: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override var isSelected: Bool {
        didSet {
            _containerView.backgroundColor =
            isSelected ? Colors.filterSelected.color : .clear
            _containerView.clipsToBounds = true
        }
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        configUI()
    }

}



extension FilterCVCell {
    var filterLabel: UILabel {
        get {
            return _filterLabel
        } set {
            _filterLabel = newValue
        }
    }
    
    private func configUI() {
        _filterLabel.font = UIFont(font: Fonts.JosefinSans.regular, size: 12)
        _filterLabel.textColor = Colors.recipeDetails.color
        
        _containerView.shapeAllCorners(radius: _containerView.bounds.height / 2)
        _containerView.setBorders(with: 2, color: .darkGray)
    }

}

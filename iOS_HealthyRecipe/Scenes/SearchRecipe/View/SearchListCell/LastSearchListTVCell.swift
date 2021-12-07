//
//  LastSearchListCellTableViewCell.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

class LastSearchListTVCell: UITableViewCell {
    static let reuseID = "LastSearchListTVCell"
    
    @IBOutlet private weak var _lastSearchLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        contentView.shapeAllCorners(radius: contentView.bounds.height / 2)
        configLabel()
    }
    
    private func configLabel() {
        _lastSearchLabel.font = UIFont(font: Fonts.JosefinSans.regular, size: 12)
        _lastSearchLabel.textColor = Colors.recipeDetails.color
    }
}

extension LastSearchListTVCell {
    var lastSearchLabel: UILabel {
        get {
            return _lastSearchLabel
        } set {
            _lastSearchLabel = newValue
        }
    }
}

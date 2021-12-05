//
//  LastSearchListCellTableViewCell.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady on 05/12/2021.
//

import UIKit

class LastSearchListCellTableViewCell: UITableViewCell {

    @IBOutlet weak var lastSearchLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        contentView.
    }
    override var isSelected: Bool {
        didSet {
            contentView.backgroundColor =
                isSelected ? Colors.color : .white
            contentView.clipsToBounds = true
        }
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

//
//  SearchBarWithDropDown.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit

class SearchBarWithDropDown: UIView {
 
    @IBOutlet  weak var searchTextField: UITextField! 
    @IBOutlet  weak var suggestionList: UITableView! {
        didSet {
//            configList()
        }
    }
    @IBOutlet weak var lastSearchListHeight: NSLayoutConstraint!
    
    let maxListHeight = CGFloat(100)
    
    var listHeight: CGFloat {
        get {
            return suggestionList.contentSize.height > maxListHeight ? maxListHeight : suggestionList.contentSize.height
        } set {
                lastSearchListHeight.constant = newValue
        }
    }
    
    var searchAction: ((String) -> Void)?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
}

extension SearchBarWithDropDown {

    private func commonInit() {
        let nib = Bundle.main.loadNibNamed("\(SearchBarWithDropDown.self)",
                                           owner: self)
        guard let view = nib?.first as? UIView
        else { fatalError("can`t load SearchBarWithDropDown") }
        
        self.addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: self.topAnchor),
            view.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            view.leftAnchor.constraint(equalTo: self.leftAnchor),
            view.rightAnchor.constraint(equalTo: self.rightAnchor)])
    }
}

extension SearchBarWithDropDown {
//    private func configList() {
//        suggestionList.backgroundColor = .clear
//        let cellNib = UINib(nibName: "\(LastSearchListTVCell.self)",
//                            bundle: .main)
//        suggestionList.register(cellNib,
//                                forCellReuseIdentifier: LastSearchListTVCell.reuseID)
//        suggestionList.shapeAllCorners(radius: 5)
//        suggestionList.setBorders(with: 2, color: Colors.filterSelected.color)
//    }
//    
}

//
//  SearchBarWithDropDown.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit

class SearchBarWithDropDown: UIView {
 
    @IBOutlet private weak var searchTextField: UITextField!
    @IBOutlet private weak var searchBtn: UIButton!
    @IBOutlet private weak var lastSearchList: UITableView! {
        didSet {
            configList()
        }
    }
    @IBOutlet private weak var lastSearchListHeight: NSLayoutConstraint!
    let data = SearchListDataSource()
    var searchAction: ((String) -> Void)?
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    
    @IBAction func searchBtnTapped(_ sender: UIButton) {
        searchAction?(searchTextField.text ?? "")
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
    private func configList() {
        lastSearchList.backgroundColor = .clear
        let cellNib = UINib(nibName: "\(LastSearchListCellTVCell.self)",
                            bundle: .main)
        lastSearchList.register(cellNib,
                                forCellReuseIdentifier: LastSearchListCellTVCell.reuseID)
        lastSearchList.delegate = data
        lastSearchList.dataSource = data
    }
}



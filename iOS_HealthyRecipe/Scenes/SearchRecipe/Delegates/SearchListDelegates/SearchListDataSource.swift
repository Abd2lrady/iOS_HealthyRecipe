//
//  SearchListDataSource.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit

class SearchListDataSource: NSObject {
    
    var lastSearches: Set<String> = ["ahmed","hassen","ahmed"]

}


extension SearchListDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastSearches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: LastSearchListCellTVCell.reuseID,
            for: indexPath) as? LastSearchListCellTVCell
        else { fatalError("can`t dequeue last search cell") }
        let indx = lastSearches.index(lastSearches.startIndex, offsetBy: indexPath.row)
        let search = lastSearches[indx]
        cell.lastSearchLabel.text = search
        return cell
    }
    
}

extension SearchListDataSource: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let label = lastSearches[lastSearches.index(lastSearches.startIndex, offsetBy: indexPath.row)]
        print(label)
    }
}

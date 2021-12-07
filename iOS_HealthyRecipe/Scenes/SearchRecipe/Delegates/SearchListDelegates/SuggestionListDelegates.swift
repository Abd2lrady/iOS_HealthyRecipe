//
//  SearchListDataSource.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import UIKit

class SuggestionListDelegates: NSObject {
    
    var lastSearches: Set<String> = ["ahmed", "hassen","siad",
                                     "omar", "hassen", "siad",
                                     "omar", "hassen", "siad",
                                     "omar", "hassen", "siad", "omar"]

}

extension SuggestionListDelegates: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastSearches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: LastSearchListTVCell.reuseID,
            for: indexPath) as? LastSearchListTVCell
        else { fatalError("can`t dequeue last search cell") }
        let indx = lastSearches.index(lastSearches.startIndex, offsetBy: indexPath.row)
        let search = lastSearches[indx]
        cell.lastSearchLabel.text = search
        return cell
    }
    
}

extension SuggestionListDelegates: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let label = lastSearches[lastSearches.index(lastSearches.startIndex, offsetBy: indexPath.row)]
        print(label)
    }
}

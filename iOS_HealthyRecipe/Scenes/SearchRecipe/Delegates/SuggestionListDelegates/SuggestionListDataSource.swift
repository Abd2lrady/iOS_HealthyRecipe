//
//  SuggestionListDataSource.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady on 09/12/2021.
//

import UIKit

class SuggestionListDataSource: NSObject {
    
    private var _lastSearches = [String]()
    
    var lastSearches: [String] {
        get {
            return _lastSearches
        } set {
            if !_lastSearches.contains(newValue[0]) {
                if _lastSearches.count < 10 {
                _lastSearches.append(contentsOf: newValue)
                } else {
                    _lastSearches[0] = newValue[0]
                }
            }
            _lastSearches.sort()
        }
    }
       
}

extension SuggestionListDataSource: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return lastSearches.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
            withIdentifier: LastSearchListTVCell.reuseID,
            for: indexPath) as? LastSearchListTVCell
        else { fatalError("can`t dequeue last search cell") }

        cell.lastSearchLabel.text = lastSearches[indexPath.row]
        return cell
    }
    
}

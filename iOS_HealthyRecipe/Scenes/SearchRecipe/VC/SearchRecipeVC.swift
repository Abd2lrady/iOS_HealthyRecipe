//
//  SearchRecipeVC.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

class SearchRecipeVC: UIViewController {
    var presenter: SearchRecipePresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        
        let urlString = "https://api.edamam.com"
        + "/search?q=chicken"
        + "&app_id=\(EnviromentVariables.appID)"
        + "&app_key=\(EnviromentVariables.appKey)"
        guard let url = URL(string: urlString) else { fatalError() }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            print(data)
        }.resume()
    }

}

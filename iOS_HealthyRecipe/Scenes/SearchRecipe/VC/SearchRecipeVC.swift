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
//       "https://api.edamam.com/search?q=chicken&app_id=8a1f2d11&app_key=d815e43efdfd35392681f44e5151d1b4"
        
        let urlString = "https://api.edamam.com"
        + "/search?q=chicken"
        + "&app_id=\(EnviromentVariables.appID)"
        + "&app_key=\(EnviromentVariables.appKey)"
        
        guard let url = URL(string: urlString) else { fatalError("wrong url") }
        URLSession.shared.dataTask(with: url) { data, _, _ in
            print(data)
        }.resume()
    }

}

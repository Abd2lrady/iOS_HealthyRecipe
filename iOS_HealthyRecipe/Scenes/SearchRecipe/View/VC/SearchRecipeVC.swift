//
//  SearchRecipeVC.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit
import Moya

class SearchRecipeVC: UIViewController, UITextFieldDelegate {
   
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var suggestionList: UITableView!
    @IBOutlet weak var suggestionListHeightConstrain: NSLayoutConstraint!
    
    var presenter: SearchRecipePresenterProtocol!
    var interactor = SearchRecipeInteractor()
    let searchTextFieldDelegate = SearchTextFieldDelegate()
    let suggestionListDelegates = SuggestionListDelegates()
    let maxSuggestListHeight = CGFloat(100)

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        configUI()
//       "https://api.edamam.com/search?q=chicken&app_id=8a1f2d11&app_key=d815e43efdfd35392681f44e5151d1b4"
        
//        let urlString = "https://api.edamam.com"
//        + "/search?q=chicken"
//        + "&app_id=\(EnviromentVariables.appID)"
//        + "&app_key=\(EnviromentVariables.appKey)"
//
//        guard let url = URL(string: urlString) else { fatalError("wrong url") }
//        URLSession.shared.dataTask(with: url) { data, _, _ in
//            print(data)
//        }.resume()
        
//        let provider = MoyaProvider<MultiTarget>()
//        provider.request(<#T##target: MultiTarget##MultiTarget#>, completion: <#T##Completion##Completion##(_ result: Result<Response, MoyaError>) -> Void#>)
        
        interactor.getRecipe { result in
            switch result {
            case .success(let recipes):
                print(recipes)
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }
    
    func configUI() {
        configSuggestionList()
        configSearchTextField()
    }
}

// MARK: configure SuggestionList
extension SearchRecipeVC {
    private func configSuggestionList() {
        suggestionList.backgroundColor = .clear
        let cellNib = UINib(nibName: "\(LastSearchListTVCell.self)",
                            bundle: .main)
        suggestionList.register(cellNib,
                                forCellReuseIdentifier: LastSearchListTVCell.reuseID)
        suggestionList.shapeAllCorners(radius: 5)
        suggestionList.setBorders(with: 2, color: Colors.filterSelected.color)
        
        suggestionList.dataSource = suggestionListDelegates
        suggestionList.delegate = suggestionListDelegates
    }
    
    var suggestListHeight: CGFloat {
        get {
            return suggestionList.contentSize.height >
            maxSuggestListHeight ? maxSuggestListHeight :
            suggestionList.contentSize.height
        } set {
            suggestionListHeightConstrain.constant = newValue
        }
    }
    
    func showList() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveLinear) {
            self.suggestListHeight = self.maxSuggestListHeight
            self.view.layoutSubviews()
        }
    }
    
    func hideList() {
        UIView.animate(withDuration: 0.3, delay: 0, options: .curveLinear) {
            self.suggestListHeight = 0
            self.view.layoutSubviews()
        }
    }

}

// MARK: configure SearchField
extension SearchRecipeVC {
    func configSearchTextField() {
        searchTextField.delegate = searchTextFieldDelegate
        searchTextField.returnKeyType = .search
        searchTextFieldDelegate.beginTypingCallBack = beginTyping
        searchTextFieldDelegate.endTypingCallBack = endTyping
    }
    
    func beginTyping() {
        showList()
    }
    
    func endTyping(search: String) {
        hideList()
        presenter.getRecipes()
    }
}

//
//  RecipeDetails.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady 
//

import UIKit

class RecipeDetailsVC: UIViewController {

    @IBOutlet private weak var _recipeImg: UIImageView!
    
    @IBOutlet private weak var _ingredientListTV: UITableView!
    
    var presenter: RecipeDetailsPresenterProtocol!
    let ingredientListTVDataSource = IngredientListTVDataSource()
    weak var coordinatorDelegate: RecipeDetailsCoordinatorProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        presenter.viewLoaded()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.barStyle = .black
    }
    
    private func configUI() {
        configNavBar()
        configIngredientList()
    }
    
    func configNavBar() {
        self.hideNavBar()
        let back = UIButton()
        back.setImage(Assets.navBackIc.image, for: .normal)
        back.addTarget(self, action: #selector(backButtonAction), for: .touchUpInside)
        let backItem = UIBarButtonItem(customView: back)
        self.navigationItem.leftBarButtonItem = backItem
    }
    
    private func hideNavBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.isTranslucent = true
    }
    
    @objc
    private func backButtonAction() {
        coordinatorDelegate?.backButtonPushed()
    }

}

extension RecipeDetailsVC {
    func configIngredientList() {
        _ingredientListTV.dataSource = ingredientListTVDataSource
        let cellNib = UINib(nibName: "\(IngredientCell.self)", bundle: .main)
        _ingredientListTV.register(cellNib,
                                   forCellReuseIdentifier: IngredientCell.reuseID)
        _ingredientListTV.alpha = 0.8
        _ingredientListTV.shapeAllCorners(radius: 10)
    }
    
}

extension RecipeDetailsVC {
    var recipeImg: UIImageView {
        get {
            return _recipeImg
        } set {
            _recipeImg = newValue
        }
    }
    
    var ingredientListTV: UITableView {
        get {
            return _ingredientListTV
        } set {
            _ingredientListTV = newValue
        }
    }
}

//
//  RecipeDetails.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady 
//

import UIKit

class RecipeDetailsVC: UIViewController {

    @IBOutlet weak var recipeImg: UIImageView!
    
    @IBOutlet weak var ingredientLinesListTV: UITableView!
    
    var presenter: RecipeDetailsPresenterProtocol!
    let ingredientListTVDataSource = IngredientListTVDataSource()
    weak var coordinatorDelegate: RecipeDetailsCoordinatorProtocol?
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
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
        ingredientLinesListTV.dataSource = ingredientListTVDataSource
        let cellNib = UINib(nibName: "\(IngredientCell.self)", bundle: .main)
        ingredientLinesListTV.register(cellNib,
                                       forCellReuseIdentifier: IngredientCell.reuseID)
        ingredientLinesListTV.alpha = 0.8
        ingredientLinesListTV.shapeAllCorners(radius: 10)
        ingredientLinesListTV.setBorders(with: 2, color: Colors.borders.color)
    }
}

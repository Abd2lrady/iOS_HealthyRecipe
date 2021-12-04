//
//  Router+RouterProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady 
//

import UIKit

extension Router: RouterProtocol {
   
    func push(view: UIViewController, animated: Bool) {
        navController.pushViewController(view, animated: animated)
    }
    
    func present(view: UIViewController, animated: Bool, completion: (() -> Void)?) {
        navController.present(view, animated: animated, completion: completion)
    }
    
    func pop(animated: Bool) {
        navController.popViewController(animated: animated)
    }
    
    func popTo(view: UIViewController, animated: Bool) {
        navController.popToViewController(view, animated: animated)
    }
    
    func popToRoot(animated: Bool) {
        navController.popToRootViewController(animated: animated)
    }
    
    func dismiss(animated: Bool, completion: (() -> Void)?) {
        navController.dismiss(animated: animated, completion: completion)
    }

}

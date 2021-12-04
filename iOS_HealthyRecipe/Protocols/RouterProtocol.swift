//
//  RouterProtocol.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

protocol RouterProtocol: AnyObject {
    func push(view: UIViewController, animated: Bool)
    func present(view: UIViewController, animated: Bool, completion: (() -> Void)?)
    func pop(animated: Bool)
    func popTo(view: UIViewController, animated: Bool)
    func popToRoot(animated: Bool)
    func dismiss(animated: Bool, completion: (() -> Void)?)
}

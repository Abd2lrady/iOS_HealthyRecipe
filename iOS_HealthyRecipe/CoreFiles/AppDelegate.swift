//
//  AppDelegate.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {
        bootStrap()
        return true
    }
    
    func bootStrap() {
        window = UIWindow()
        appCoordinator = AppCoordinator(window: window ?? UIWindow())
        appCoordinator?.coordinate()
    }

}

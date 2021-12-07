//
//  RecipeTarget.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Moya
import Foundation

enum RecipeTarget {
    case getRecipe
}

extension RecipeTarget: TargetType {
    var baseURL: URL {
        return EnviromentVariables.baseURl
    }
    
    var path: String {
        switch self {
        case .getRecipe:
            return "search"
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .getRecipe:
            return .get
        }
    }
    
    var task: Task {
        let appKey = EnviromentVariables.appKey
        let appID = EnviromentVariables.appID
        let param = ["q":"chicken", "app_key": appKey, "app_id": appID]
        switch self {
        case .getRecipe:
            return .requestParameters(parameters: param,
                                          
                                      encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}

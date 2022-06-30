//
//  RecipeTarget.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Moya
import Foundation

enum RecipeTarget {
    case getRecipe(query: String, filter: Filter?)
}

extension RecipeTarget: TargetType {
    var baseURL: URL {
        return EnviromentVariables.baseURl
    }
    
    var path: String {
        switch self {
        case .getRecipe:
            return "/search"
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
        switch self {
        case .getRecipe(let search, let filter):
            var param = ["q": search, "app_key": appKey, "app_id": appID]
            if let filter = filter?.rawValue {
                param["health"] = filter
            }
            return .requestParameters(parameters: param,
                                      encoding: URLEncoding.default)
        }
    }
    
    var headers: [String: String]? {
        return nil
    }
}

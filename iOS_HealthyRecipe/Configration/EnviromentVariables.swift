//
//  EnviromentVariables.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady

import Foundation

enum EnviromentVariables {
    
    private enum PlistKeys {
        static let baseURL = "ROOT_URL"
    }
    
    private static let infoDict: [String: Any] = {
        guard let dict = Bundle.main.infoDictionary else {
            fatalError("Plist not found")
        }
        return dict
    }()
    
    static let baseURl: URL = {
        guard let baseUrlString = infoDict[PlistKeys.baseURL] as? String else {
            fatalError("baseURL not founded in Plist")
        }
        
        let completeBaseUrlString = "https://\(baseUrlString)"
        
        guard let url = URL(string: completeBaseUrlString) else {
            print(completeBaseUrlString)
            fatalError("can`t get valid URL")
        }
        return url
    }()
    
    static let appID: String = {
        return "8a1f2d11"
    }()
    
    static let appKey: String = {
        return "d815e43efdfd35392681f44e5151d1b4"
    }()

}

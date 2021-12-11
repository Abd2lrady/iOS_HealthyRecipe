//
//  NetworkManager.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Moya
import Foundation
import SwiftUI

class NetworkManager {
    private init() {}
    static let instance = NetworkManager()
    
    private let provider = MoyaProvider<MultiTarget>()
    
    func request(target: MultiTarget,
                 completion: @escaping (Result<Data, Error>) -> Void) {
        provider.request(target) { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let response):
                if (200...299 ~= response.statusCode) {
                    completion(.success(response.data))
                } else {
//                    completion(.failure())
                }
            }
        }
    }
    
}

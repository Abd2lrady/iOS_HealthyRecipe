//
//  SearchRecipeInteractor.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import Moya

class SearchRecipeInteractor {
    func getRecipe(completion: @escaping (Result<[Hit]?,Error>) -> Void) {
        
        NetworkManager.instance.request(target: MultiTarget(RecipeTarget.getRecipe)) { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let response):
                do {
                    let parsedResponse = try JSONDecoder().decode(ServerResponse<[Hit]>.self, from: response)
                    completion(.success(parsedResponse.hits))
                    print("interactor reached")
                } catch(let parseError){
                    completion(.failure(parseError))
                }
            }
        }
    }
}

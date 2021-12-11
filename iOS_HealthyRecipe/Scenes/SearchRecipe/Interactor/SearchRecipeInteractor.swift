//
//  SearchRecipeInteractor.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation
import Moya

class SearchRecipeInteractor {
    func getRecipe(for meal: String,
                   filter: Filter?,
                   completion: @escaping (Result<[Hit]?, Error>) -> Void) {
        
        NetworkManager.instance.request(
            target: MultiTarget(RecipeTarget.getRecipe(query: meal,
                                                       filter: filter))) { result in
            switch result {
            case .failure(let error):
                completion(.failure(error))
            case .success(let response):
                do {
                    let parsedResponse = try JSONDecoder().decode(ServerResponse<[Hit]>.self,
                                                                  from: response)
                    print(response.count)
                    completion(.success(parsedResponse.hits))
                } catch {
//                    completion(.failure(parseError))
                }
            }
        }
    }
}

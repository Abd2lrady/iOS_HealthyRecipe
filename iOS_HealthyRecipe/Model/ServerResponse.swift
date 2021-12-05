//
//  ServerResponse.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

struct ServerResponse<ResponseType: Codable>: Codable {

    var hits: ResponseType?
    let message: String?
    let count: Int?

}

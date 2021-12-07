//
//  ServerResponse.swift
//  iOS_HealthyRecipe
//
//  Created by Ahmad Abdulrady
//

import Foundation

struct ServerResponse<ResponseType: Codable>: Codable {

    let hits: ResponseType?
    let count: Int?

}

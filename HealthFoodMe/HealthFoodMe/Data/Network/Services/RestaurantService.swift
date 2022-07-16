//
//  SearchService.swift
//  HealthFoodMe
//
//  Created by Junho Lee on 2022/07/16.
//

import Foundation

import Alamofire

class RestaurantService: BaseService {
    static let shared = RestaurantService()
    
    private override init() {}
}

extension RestaurantService {
    
    func requestRestaurantSearch(query: String, completion: @escaping (NetworkResult<Any>) -> Void) {
        requestObject(RestaurantRouter.requestRestaurantSearch(query: query), type: SearchDataModel.self, decodingMode: .general, completion: completion)
    }
}
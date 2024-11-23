//
//  APIService.swift
//  DM126_Class3
//
//  Created by Nova Labs on 11/23/24.
//

import Foundation
import Alamofire

struct APIService {
    func getGoals(completion: @escaping ([GoalType]?, Error?)->Void){
        AF.request("https://private-f2e2af-dm126api.apiary-mock.com/goals").responseDecodable(of:[GoalType].self){
            response in
            switch response.result{
            case .success(let goals):completion(goals, nil)
            default: break
            }
        }
    }
}

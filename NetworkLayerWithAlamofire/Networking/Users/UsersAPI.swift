//
//  UsersAPI.swift
//  NetworkLayerWithAlamofire
//
//  Created by Abdelrhman Ahmed on 23/05/2022.
//

import Foundation

protocol UsersAPIProtocol {
    func getUsers(completion: @escaping(Result<[UserModel]?, NSError>) -> Void)
}

class UsersAPI: BaseAPI<UsersNetworking>, UsersAPIProtocol {
    
    // MARK: Requests
    
    func getUsers(completion: @escaping(Result<[UserModel]?, NSError>) -> Void){
        self.fetchData(target: .getUsers, responseClass: [UserModel].self) { (result) in
            completion(result)
        }
    }
    
}

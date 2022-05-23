//
//  ViewController.swift
//  NetworkLayerWithAlamofire
//
//  Created by Abdelrhman Ahmed on 23/05/2022.
//

import UIKit

class ViewController: UIViewController {

    let api: UsersAPIProtocol = UsersAPI()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        api.getUsers { (result) in
            switch result {
            case .success(let response):
                let users = response
                for user in users ?? [] {
                    print("user id: \(user.id ?? 0), username: \(user.name ?? "")")
                }
            case .failure(let error):
                // Show UI Error
                print(error.userInfo[NSLocalizedDescriptionKey] as? String ?? "Unknown Error")
            }
            
        }
        
    }
        
}


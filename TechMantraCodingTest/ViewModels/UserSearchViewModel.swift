//
//  UserSearchViewModel.swift
//  TechMantraCodingTest
//
//  Created by Durga Cheera on 10/02/23.
//

import Foundation

class UserSearchViewModel : NSObject {
    
    override init() {
        super.init()
    }
    
    func fectchUserDetailsFromGitHub(text: String, completion: @escaping (_ error: Error?, _ user: User?) -> Void) {
        UserManagerAPI.shared.getUserDetails(name: text) { (error, user) in
            completion(error, user)
        }
    }
}

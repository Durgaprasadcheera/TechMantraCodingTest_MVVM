//
//  ReachabilityManager.swift
//  GitHubUserSearch
//
//  Created by Durga Cheera on 09/02/23.
//

import Foundation
import Reachability

class ReachabilityManager {
    
    private init() {}
    static let shared = ReachabilityManager()
    
    let reachability = try! Reachability()
    
    func isReachable() -> Bool{
        return reachability.connection != .unavailable ? true : false
    }
}

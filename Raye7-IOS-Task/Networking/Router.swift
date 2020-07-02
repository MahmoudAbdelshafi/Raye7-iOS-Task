//
//  Router.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/2/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation


enum Router {
    case getAllLeagues
    case getLeague(idLeague: String)
    
    
    private static let baseURLString = "https://www.thesportsdb.com/api/v1/json/1/"
    
    private enum HTTPMethod {
        case get
        
        var value: String {
            switch self {
            case .get: return "GET"
            }
        }
    }

    private var method: HTTPMethod {
        switch self {
        case .getAllLeagues: return .get
        case .getLeague: return .get
        }
    }
    
    private var path: String {
        switch self {
        case .getAllLeagues:
            return "all_leagues.php"
        case .getLeague(let idLeague):
            return "lookupleague.php?id=4328\(idLeague)"
        }
    }
    
    func request() throws -> URLRequest {
        let urlString = "\(Router.baseURLString)\(path)"
        
        guard let url = URL(string: urlString) else {
            throw ErrorType.parseUrlFail
        }
        
        var request = URLRequest(url: url, cachePolicy: .reloadIgnoringCacheData, timeoutInterval: 10)
        request.httpMethod = method.value
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        switch self {
        case .getAllLeagues:
            return request
        case .getLeague:
            return request
            
        }
    }
}





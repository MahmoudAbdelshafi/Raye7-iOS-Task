//
//  File.swift
//  Raye7-IOS-Task
//
//  Created by Mahmoud on 7/2/20.
//  Copyright © 2020 Mahmoud. All rights reserved.
//

import Foundation

/// Result cases

enum Result<T> {
    case success(data: T)
    case failure(error: Error)
}

/// Error Handling Cases

enum ErrorType:Error {
    case parseUrlFail
    case notFound
    case validationError
    case serverError
    case defaultError
    
    var errorDescription: String? {
        switch self {
        case .parseUrlFail:
            return "Cannot initial URL object."
        case .notFound:
            return "Not Found"
        case .validationError:
            return "Validation Errors"
        case .serverError:
            return "Internal Server Error"
        case .defaultError:
            return "Something went wrong."
        }
    }
}

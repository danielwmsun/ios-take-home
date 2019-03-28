//
//  GenericError.swift
//  StockTwits iOS Take Home
//
//  Created by Daniel Sun on 3/27/19.
//  Copyright © 2019 stocktwits. All rights reserved.
//

import Foundation

internal enum GenericError: Error {
    case generic
}

internal extension GenericError: LocalizedError {
    var errorDescription: String? {
        switch self {
        default:
            return "This network request failed."
        }
    }
}

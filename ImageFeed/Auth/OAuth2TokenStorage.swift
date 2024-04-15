//
//  OAuth2TokenStorage.swift
//  ImageFeed
//
//  Created by Антон Ровенко on 15.04.2024.
//

import Foundation

final class OAuth2TokenStorage {
    private var bearerToken = "Bearer Token"
    private let userDefaults = UserDefaults.standard
    
    var token: String? {
        get {
            return userDefaults.string(forKey: bearerToken)
        }
        set {
            userDefaults.set(newValue, forKey: bearerToken)
        }
    }
}

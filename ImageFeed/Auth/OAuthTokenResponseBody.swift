//
//  OAuthTokenResponseBody.swift
//  ImageFeed
//
//  Created by Антон Ровенко on 15.04.2024.
//

import Foundation

struct OAuthTokenResponseBody: Codable {
    let accessToken: String
    let tokenType: String
    let scope: String
    let createdAt: Int
}

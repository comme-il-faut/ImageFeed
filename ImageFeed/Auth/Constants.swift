//
//  AccessKey.swift
//  ImageFeed
//
//  Created by Антон Ровенко on 05.04.2024.
//

import Foundation

enum Constants{
    static let accessKey = "H7MxRppwT1MFms5WC48bVEkbNfHfYj0SmiWOn5pWuCU"
    static let secretKey = "4v7U61SIMFvr2pCDXLznwXnkKvKivDWWflT9D-b39NU"
    static let redirectURI = "urn:ietf:wg:oauth:2.0:oob"
    static let accessScope = ["public", "read_user", "write_likes"].joined(separator: "+")
    static let defaultBaseURL = URL(string: "https://api.unsplash.com")!
}

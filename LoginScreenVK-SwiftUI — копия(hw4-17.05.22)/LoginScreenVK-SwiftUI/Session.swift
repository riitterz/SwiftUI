//
//  Session.swift
//  VK_app
//
//  Created by Macbook on 11.03.2022.
//

import Foundation
//import SwiftKeychainWrapper

final class Session: ObservableObject {
        
    static let shared = Session()
    
    @Published var userId = ""
    @Published var token = ""
    @Published var version = "5.131"
    @Published var clientId = "7822904"
    @Published var isAuthorized: Bool = false
    
    private init() {}
}

//
//  Friend.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import Foundation
import CoreData


struct Friend: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    
    
}

struct FriendList {
   
    static let fiveFriends = [
        Friend(id: UUID(), name: "Person1", image: "ps1"),
        Friend(id: UUID(), name: "Person2", image: "ps2"),
        Friend(id: UUID(), name: "Person3", image: "ps3"),
        Friend(id: UUID(), name: "Person4", image: "ps4"),
        Friend(id: UUID(), name: "Person5", image: "ps5")
    ]
    
//    static let fiveFriends = [
//        Friend(id: 1, name: "Person1", image: "ps1"),
//        Friend(id: 2, name: "Person2", image: "ps2"),
//        Friend(id: 3, name: "Person3", image: "ps3"),
//        Friend(id: 4, name: "Person4", image: "ps4"),
//        Friend(id: 5, name: "Person5", image: "ps5")
//    ]
}

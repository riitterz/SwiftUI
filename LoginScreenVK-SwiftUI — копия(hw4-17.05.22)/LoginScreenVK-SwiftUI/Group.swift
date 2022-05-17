//
//  Group.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import Foundation

struct Group: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

struct GroupList {
    
    static let fiveGroups = [
        Group(id: UUID(), name: "Group1", image: "gp1"),
        Group(id: UUID(), name: "Group2", image: "gp2"),
        Group(id: UUID(), name: "Group3", image: "gp3"),
        Group(id: UUID(), name: "Group4", image: "gp4"),
        Group(id: UUID(), name: "Group5", image: "gp5")
    ]
    
//    static let fiveGroups = [
//        Group(id: 1, name: "Group1", image: "gp1"),
//        Group(id: 2, name: "Group2", image: "gp2"),
//        Group(id: 3, name: "Group3", image: "gp3"),
//        Group(id: 4, name: "Group4", image: "gp4"),
//        Group(id: 5, name: "Group5", image: "gp5")
//    ]
}

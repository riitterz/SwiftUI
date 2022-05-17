//
//  GroupViewModel.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 09.05.2022.
//

import Foundation

class GroupModel: ObservableObject {
   
    let group: Group
    
    let objectWillChange = ObjectWillChangePublisher()
    
    @Published var myGroup: [CertainGroupView] = []
    
    init(group: Group) {
        self.group = group
    }
}

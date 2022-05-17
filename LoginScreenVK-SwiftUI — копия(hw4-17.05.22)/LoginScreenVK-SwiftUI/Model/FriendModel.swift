//
//  FriendViewModel.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 09.05.2022.
//

import Foundation

class FriendModel: ObservableObject {
   
    let friend: Friend
    
    let objectWillChange = ObjectWillChangePublisher()
    
    @Published var myFriend: [CertainFriendView] = []
    
    init(friend: Friend) {
        self.friend = friend
    }
}

//
//  СertainFriend.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct CertainFriend: View {
//    @State var friend: [
//        Profile
//    ]
    var profileFriend = Friend.self
//    var profileFriend: [Friend]
    var body: some View {
        VStack {
            
            //пробная версия
//            Image("ps1")
//                .frame(maxHeight: 200)
//            Text("Person1")
//                .font(.system(size: 20))
//            Spacer()
        }
    }
}

struct Profile: View {
    var thatFriend: Friend
    var body: some View {
        VStack {
            Image(thatFriend.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxHeight: 200)
            Spacer()
            Text(thatFriend.name)
        }
    }
}

struct CertainFriend_Previews: PreviewProvider {
    static var previews: some View {
        CertainFriend()
        
//        CertainFriend(profileFriend: myFriends)
    }
}

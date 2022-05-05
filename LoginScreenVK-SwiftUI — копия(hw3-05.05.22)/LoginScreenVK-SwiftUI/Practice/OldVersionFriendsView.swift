//
//  OldVersionFriendsView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct OldVersionFriendsView: View {
    var friendToInvite: [Friend]
    var body: some View {
        VStack {
            HStack(spacing: 1) {
                VKImage()
                Text("Friends")
                    .font(.system(size: 30))
                //.bold()
                Spacer()
            }
            VStack {
                List(myFriends.sorted(by: { $0.name < $1.name })) {
                    friend in NavigationLink(destination: SecondPracticeListDetailView(friend: FriendList.fiveFriends.first!)) {
                        ListRow(eachFriend: friend)
                    }

                }
                
//                List(myFriends.sorted(by: { $0.name < $1.name })) {
//                    friend in NavigationLink(destination: CertainFriend()) {
//                        ListRow(eachFriend: friend)
//                    }
//
//                }
                
                
                
//                List(myFriends.sorted(by: { $0.name < $1.name })) {
//                    friend in NavigationLink(destination: CertainFriend(profileFriend: myFriends)) {
//                        ListRow(eachFriend: friend)
//                    }
//
//                }
                
                //Старая версия без навигации и без сортировки по буквам
//                List(friendToInvite) {
//                    friend in ListRow(eachFriend: friend)
//
//                }
            }
        }
    }
}


struct ListRow: View {
    var eachFriend: Friend
    var body: some View {
        HStack {
            Text(eachFriend.name)
            Spacer()
            Image(eachFriend.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: 50)
        }
    }
}


//NavigationLink( destination: CertainFriend())
var myFriends = [
    Friend(id: 1, name: "Person1", image: "ps1"),
    Friend(id: 2, name: "Person2", image: "ps2"),
    Friend(id: 3, name: "Person3", image: "ps3"),
    Friend(id: 4, name: "Person4", image: "ps4"),
    Friend(id: 5, name: "Person5", image: "ps5")
]

struct OldVersionFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        OldVersionFriendsView(friendToInvite: myFriends)
    }
}

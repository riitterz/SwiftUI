//
//  TabBarView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            NewslineView()
                .tabItem {
                    Image(systemName: "newspaper")
                    Text("News")
                }
            FriendsListView()
                .tabItem {
                    Image(systemName: "person.2")
                    Text("Friends")
                }
//            FriendsView(friendToInvite: myFriends)
//                .tabItem {
//                    Image(systemName: "person.2")
//                    Text("Friends")
//                }
            GroupsListView()
                .tabItem{
                    Image(systemName: "person.3")
                    Text("Groups")
                }
        }
        .accentColor(.black)
        .font(.headline)
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}

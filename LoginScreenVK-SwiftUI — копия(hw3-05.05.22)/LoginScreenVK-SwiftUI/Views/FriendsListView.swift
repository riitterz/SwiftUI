//
//  SecondPracticeListView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct FriendsListView: View {
    
    var friends: [Friend] = FriendList.fiveFriends
    
    var body: some View {
        NavigationView {
            List(friends, id: \.id) { friend in
                NavigationLink(destination: SecondPracticeListDetailView(friend: friend), label: {
                    Image(friend.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .padding(.vertical, 4)
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(friend.name)
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                        
                        Text("last seen 2 hours ago")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                })
            }
            .navigationTitle("My friends")
        }
    }
    
}

struct FriendsListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView()
    }
}

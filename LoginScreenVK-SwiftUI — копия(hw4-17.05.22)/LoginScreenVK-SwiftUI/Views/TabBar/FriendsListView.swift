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
        VStack {
            HStack(spacing: 5) {
                VKImage()
                Text("Friends")
                    .font(.system(size: 30))
                //.bold()
                Spacer()
            }
            // List(friends, id: \.id) { friend in
            List(friends.sorted(by: { $0.name < $1.name })) { friend in
                NavigationLink(destination: CertainFriendView(friend: friend), label: {
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
        }
    }
}

struct FriendsListView_Previews: PreviewProvider {
    static var previews: some View {
        FriendsListView()
    }
}

//
//  SecondPracticeListDetailView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct CertainFriendView: View {
    
    var friend: Friend
    
    var body: some View {
        
        VStack(spacing: 20) {
            Image(friend.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            VStack(spacing: 5) {
                Text(friend.name)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)

                Text("last seen 2 hours ago")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CertainFriendView_Previews: PreviewProvider {
    static var previews: some View {
        CertainFriendView(friend: FriendList.fiveFriends.first!)
    }
}

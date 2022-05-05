//
//  SecondPracticeListDetailView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 04.05.2022.
//

import SwiftUI

struct SecondPracticeListDetailView: View {
    
    var friend: Friend
    
    var body: some View {
        VStack {
            Image(friend.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            Text(friend.name)
                .font(.system(size: 20))
                .fontWeight(.semibold)
                .padding()
                Spacer()
            
        }
    }
}

struct SecondPracticeListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SecondPracticeListDetailView(friend: FriendList.fiveFriends.first!)
    }
}

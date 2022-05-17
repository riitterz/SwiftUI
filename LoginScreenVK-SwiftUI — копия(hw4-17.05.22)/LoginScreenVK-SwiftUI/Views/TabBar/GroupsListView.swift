//
//  ProfileView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct GroupsListView: View {
    
    var groups: [Group] = GroupList.fiveGroups
    
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                VKImage()
                Text("Groups")
                    .font(.system(size: 30))
                //.bold()
                Spacer()
            }
            //List(groups, id: \.id) { group in
            List(groups.sorted(by: { $0.name < $1.name })) { group in
                NavigationLink(destination: CertainGroupView(group: group), label: {
                    Image(group.image)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 50)
                        .padding(.vertical, 4)
                    
                    
                    VStack(alignment: .leading, spacing: 5) {
                        
                        Text(group.name)
                            .fontWeight(.semibold)
                            .minimumScaleFactor(0.5)
                        
                        Text("6 members")
                            .font(.subheadline)
                            .foregroundColor(.secondary)
                    }
                })
            }
        }
    }
    
}

struct GroupsListView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsListView()
    }
}

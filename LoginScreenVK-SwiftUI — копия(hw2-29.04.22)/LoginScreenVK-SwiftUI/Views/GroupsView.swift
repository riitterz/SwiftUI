//
//  ProfileView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct GroupsView: View {
    var groupToInvite: [Group]
    var body: some View {
        VStack {
            HStack(spacing: 1) {
                VKImage()
                //Spacer()
                Text("Groups")
                    .font(.system(size: 30))
                    .bold()
            }
            VStack {
                List(groupToInvite) {
                    group in GroupListRow(eachGroup: group)
                }
            }
        }
    }
}

struct GroupListRow: View {
    var eachGroup: Group
    var body: some View {
        HStack {
            Text(eachGroup.name)
            Spacer()
            Image(eachGroup.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: 50)
        }
    }
}

var myGroups = [
    Group(id: 1, name: "Group1", image: "gp1"),
    Group(id: 2, name: "Group2", image: "gp2"),
    Group(id: 3, name: "Group3", image: "gp3"),
    Group(id: 4, name: "Group4", image: "gp4"),
    Group(id: 5, name: "Group5", image: "gp5")
]

struct GroupsView_Previews: PreviewProvider {
    static var previews: some View {
        GroupsView(groupToInvite: myGroups)
    }
}

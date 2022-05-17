//
//  CertainGroup.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct CertainGroupView: View {
    
    var group: Group
    
    var body: some View {
       
        VStack(spacing: 20) {
            Image(group.image)
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            
            VStack(spacing: 5) {
                Text(group.name)
                    .font(.system(size: 20))
                    .fontWeight(.semibold)
                
                Text("6 members")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            Spacer()
        }
    }
}

struct CertainGroupView_Previews: PreviewProvider {
    static var previews: some View {
        CertainGroupView(group: GroupList.fiveGroups.first!)
    }
}

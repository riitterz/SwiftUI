//
//  NavigationView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 27.04.2022.
//

import SwiftUI

struct ConteinerView: View {
    @State private var shouldShowMainView: Bool = false
    
    var body: some View {
        NavigationView {
            HStack {
                LoginView(isUserLogggedIn: $shouldShowMainView)
                
                //MARK: - Navigation Links
                NavigationLink(destination: TabBarView(), isActive: $shouldShowMainView) {
                    EmptyView()
                }
            }
        }
    }
}

struct ConteinerView_Previews: PreviewProvider {
    static var previews: some View {
        ConteinerView()
    }
}

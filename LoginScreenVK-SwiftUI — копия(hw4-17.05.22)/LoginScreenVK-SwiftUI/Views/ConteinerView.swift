//
//  NavigationView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 27.04.2022.
//

import SwiftUI

struct ConteinerView: View {
    
    @State private var shouldShowMainView: Bool = false
    @ObservedObject var session = Session.shared
    
    var body: some View {
        NavigationView {
            HStack {
                NetworkLoginScreen()
                NavigationLink(destination: TabBarView(), isActive: $session.isAuthorized) {
                    EmptyView()
                }
               //Кастомный вариант
//                LoginView(isUserLogggedIn: $shouldShowMainView)
//                NavigationLink(destination: TabBarView(), isActive: $shouldShowMainView) {
//                    EmptyView()
//                }
            }
        }
    }
}

struct ConteinerView_Previews: PreviewProvider {
    static var previews: some View {
        ConteinerView()
    }
}

//
//  ContentView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 21.04.2022.
//

import SwiftUI
import Combine

struct LoginView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var shouldShowLogo: Bool = true

    @State private var showIncorrectCredentialsWarning: Bool = false
    @Binding var isUserLogggedIn: Bool

    private let keyboardIsOnPublisher = Publishers.Merge(
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillChangeFrameNotification)
            .map { _ in true },
        NotificationCenter.default.publisher(for: UIResponder.keyboardWillHideNotification)
            .map { _ in false }
    )
        .removeDuplicates()

    func verifyLoginData() {
        if login.elementsEqual("Hello") && password.elementsEqual("1234") {
            isUserLogggedIn = true
        } else {
            showIncorrectCredentialsWarning = true
        }
        password = ""
    }

    var body: some View {

        ScrollView(showsIndicators: false) {
            VStack {
                if shouldShowLogo {
                    VKImage()
                }
                VStack {
                    HStack {
                        Text("Login:")
                        //.foregroundColor(.white)
                        Spacer()
                        TextField("Login", text: $login)
                            .frame(maxWidth: 150)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }
                    HStack {
                        Text("Password:")
                        //.foregroundColor(.white)
                        Spacer()
                        TextField("Password", text:  $password)
                            .frame(maxWidth: 150)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                    }

                }.frame(maxWidth: 250)
                    .padding(.top, 50)

                Button(action: verifyLoginData) {
                //Button(action: verifyLoginData) {
                    Text("Log in")
                }.padding(.top, 50)
                    .padding(.bottom, 20)
                .disabled(login.isEmpty || password.isEmpty)

            }.onReceive(keyboardIsOnPublisher) { isKeyboardOn in
                withAnimation(Animation.easeInOut(duration: 0.5)) {
                    self.shouldShowLogo = !isKeyboardOn
                }
            }

        }.onTapGesture {
            UIApplication.shared.endEditing()
        }.alert(isPresented: $showIncorrectCredentialsWarning, content: {
            Alert(title: Text("Error"), message: Text("Incorrect Login/Password was entered"))
        })
    }
}

extension UIApplication {
        
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ConteinerView()
    }
}

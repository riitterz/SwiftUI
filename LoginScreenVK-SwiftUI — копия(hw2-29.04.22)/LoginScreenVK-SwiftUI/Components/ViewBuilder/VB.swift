//
//  VB.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 28.04.2022.
//

import SwiftUI

struct VB: View {
    var body: some View {
        NavigationView {
            VStack {
                AlertView {
                    Image(systemName: "exclamationmark.shield.fill")
                        .resizable()
                        .frame(width: 65, height: 65)
                    Text("Here is a custom alert with view builder!")

                }
            }
            .navigationTitle("View Builder")
        }
    }
}

struct AlertView<Content: View>: View {
    let content: Content
    
    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }
    
    var body: some View {
        VStack {
            content
                .padding()
            
            Divider()
            
            HStack {
                Button(action: {}, label: {
                    Text("Cancel")
                        .bold()
                        .foregroundColor(.red)
                })
                Spacer()
                Button(action: {}, label: {
                    Text("Confirm")
                        .bold()
                        .foregroundColor(.white)
                })
            }
            .padding()
        }
        .frame(width: UIScreen.main.bounds.size.width/2)
        .background(Color.blue)
        .cornerRadius(7)
        .padding()
    }
}

struct VB_Previews: PreviewProvider {
    static var previews: some View {
        VB()
    }
}

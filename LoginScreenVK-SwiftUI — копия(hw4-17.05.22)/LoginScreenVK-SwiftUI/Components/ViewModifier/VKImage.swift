//
//  VKImage.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 27.04.2022.
//

import SwiftUI

struct VKImage: View {
    var body: some View {
        VStack {
            Image("VKImage")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .modifier(VKImageModifier())
                //.padding()
        }
    }
}

struct VKImageModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(10)
            .padding(15)
            //.shadow(color: Color.gray, radius: 5, x: 5, y: 5)
    }
}

struct VKImage_Previews: PreviewProvider {
    static var previews: some View {
        VKImage()
    }
}

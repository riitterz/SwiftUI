//
//  LikeButtonView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 31.05.2022.
//

import SwiftUI

struct LikeButtonView: View {
    @State private var isLiked = false
    
    var body: some View {
        VStack {
            LikeButton(isLiked: $isLiked)
        }
    }
}

struct LikeButton: View {
    @Binding var isLiked: Bool
    @State private var animate = false
    
    private let animationDuration: Double = 0.1
    private var animationScale: CGFloat {
        isLiked ? 0.7 : 1.3
    }
    
    var body: some View {
        Button(action: {
            self.animate = true
            DispatchQueue.main.asyncAfter(deadline: .now() + self.animationDuration, execute: {
                self.animate = false
                self.isLiked.toggle()
            })
        }, label: {
            Image(systemName: isLiked ? "heart.fill" : "heart")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 22)
                .foregroundColor(isLiked ? .red : .black)
        })
        .scaleEffect(animate ? animationScale : 1)
        .animation(.easeIn(duration: animationDuration))
    }
}

struct LikeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        LikeButtonView()
    }
}

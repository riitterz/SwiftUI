//
//  NewslineView.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 29.04.2022.
//

import SwiftUI

struct NewslineView: View {
    var body: some View {
        VStack {
            HStack(spacing: 5) {
                VKImage()
                Text("News")
                    .font(.system(size: 30))
                //.bold()
                Spacer()
            }
            Spacer()
            Text("News")
            Spacer()
        }
    }
}

struct NewslineView_Previews: PreviewProvider {
    static var previews: some View {
        NewslineView()
    }
}

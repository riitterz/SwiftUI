//
//  SelectionRectangle.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 09.06.2022.
//

import SwiftUI
import Foundation

struct SelectionRectangle: View {
    let anchor: Anchor<CGRect>?
    
    var body: some View {
         GeometryReader { proxy in
             if let rect = self.anchor.map({ proxy[$0] }) {
                 Rectangle()
                     .fill(Color.clear)
                     .border(Color.blue, width: 2)
                     .offset(x: rect.minX, y: rect.minY)
                     .frame(width: rect.width, height: rect.height)
             }
         }
     }
}

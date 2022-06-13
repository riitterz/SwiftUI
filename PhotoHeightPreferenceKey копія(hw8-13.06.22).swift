//
//  PhotoHeightPreferenceKey.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 09.06.2022.
//

import SwiftUI
import Foundation

struct PhotoHeightPreferenceKey: PreferenceKey {

    static var defaultValue: CGFloat = 0
    
    static func reduce(value: inout CGFloat, nextValue: () -> CGFloat) {
        value = max(value, nextValue())
    }
}


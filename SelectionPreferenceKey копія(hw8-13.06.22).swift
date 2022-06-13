//
//  SelectionPreferenceKey.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 09.06.2022.
//

import SwiftUI
import Foundation

struct SelectionPreferenceKey: PreferenceKey {
    
    static var defaultValue: Anchor<CGRect>? = nil

    static func reduce(value: inout Anchor<CGRect>?, nextValue: () -> Anchor<CGRect>?) {
        value = value ?? nextValue()
    }
}

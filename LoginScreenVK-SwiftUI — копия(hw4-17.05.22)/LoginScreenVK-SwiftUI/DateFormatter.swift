//
//  DateFormatter.swift
//  LoginScreenVK-SwiftUI
//
//  Created by Macbook on 12.05.2022.
//

import Foundation

extension DateFormatter {
    static func forecastFormat(for date: Date) -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE, HH:mm"
        return dateFormatter.string(from: date)
    }
}

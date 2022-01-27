//
//  MainModule.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import Foundation
import SwiftUI

struct GradColor {
    var gradStart : Color
    var gradStop : Color
}

struct UserData {
    var name : String {
        didSet {
            if name.count > 18 {
                name = String(name.prefix(18))
            }
        }
    }
    var age : String
    {
        didSet {
            if let age = Int(age) {
                self.age = String(age)
            }
        }
    }
    var country : String
}

struct UIData {
    var minWidth: Double
    var maxWidth: Double
    var width: Double
    var minHeight: Double
    var maxHeight: Double
    var height: Double
}

extension Color {
    func uiColor() -> UIColor {
        if #available(iOS 14.0, *) {
            return UIColor(self)
        }

        let scanner = Scanner(string: description.trimmingCharacters(in: CharacterSet.alphanumerics.inverted))
        var hexNumber: UInt64 = 0
        var r: CGFloat = 0.0, g: CGFloat = 0.0, b: CGFloat = 0.0, a: CGFloat = 0.0

        let result = scanner.scanHexInt64(&hexNumber)
        if result {
            r = CGFloat((hexNumber & 0xFF000000) >> 24) / 255
            g = CGFloat((hexNumber & 0x00FF0000) >> 16) / 255
            b = CGFloat((hexNumber & 0x0000FF00) >> 8) / 255
            a = CGFloat(hexNumber & 0x000000FF) / 255
        }
        return UIColor(red: r, green: g, blue: b, alpha: a)
    }
}

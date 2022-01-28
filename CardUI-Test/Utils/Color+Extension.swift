//
//  Color+Extension.swift
//  CardUI-Test
//
//  Created by Admin on 28.01.2022.
//

import SwiftUI

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
    typealias RGBA = (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)
    var rgba: RGBA? {
        var (r,g,b,a): RGBA = (0,0,0,0)
        return uiColor().getRed(&r, green: &g, blue: &b, alpha: &a) ? (r,g,b,a) : nil
    }
    var hexaRGB: String? {
        guard let rgba = rgba else { return nil }
        return String(format: "#%02x%02x%02x",
            Int(rgba.red*255),
            Int(rgba.green*255),
            Int(rgba.blue*255))
    }
    var hexaRGBA: String? {
        guard let rgba = rgba else { return nil }
        return String(format: "#%02x%02x%02x%02x",
            Int(rgba.red * 255),
            Int(rgba.green * 255),
            Int(rgba.blue * 255),
            Int(rgba.alpha * 255))
    }
}

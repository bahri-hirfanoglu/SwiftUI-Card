//
//  Color+Extension.swift
//  CardUI-Test
//
//  Created by Admin on 28.01.2022.
//

import SwiftUI

extension Color {
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

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

var countryList = [
"TR", "BR", "US", "GG", "BH", "BG", "CP", "CR"
]

struct UIData {
    var minWidth: Double
    var maxWidth: Double
    var width: Double
    var minHeight: Double
    var maxHeight: Double
    var height: Double
}

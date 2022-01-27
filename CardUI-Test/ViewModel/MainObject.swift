//
//  MainViewModel.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import Foundation
import SwiftUI

class MainObject : ObservableObject {
    @Published var mainBgColor : GradColor = GradColor(gradStart: .red, gradStop: .blue)
    @Published var user : UserData = UserData(name: "Bahri", age: "22", country: "TR")
    @Published var user_data = ["name": "Bahri"]
    @Published var baseFont : String = "AppleSDGothicNeo"
    @Published var uidata = UIData(minWidth: 300, maxWidth: 340, width: 340, minHeight: 140, maxHeight: 370, height: 140)

    init() {
        mainBgColor = randomGradColor()
    }
    
    func getFlag(country:String) -> String {
        let base : UInt32 = 127397
        var s = ""
        for v in country.uppercased().unicodeScalars {
            s.unicodeScalars.append(UnicodeScalar(base + v.value)!)
        }
        return s
    }
    
    func randomGradColor() -> GradColor {
     return GradColor(gradStart: getColor(), gradStop: getColor())
    }
    
    func getColor() -> Color {
        return Color(red: Double.random(in: 1..<255) / 255, green: Double.random(in: 1..<255) / 255, blue: Double.random(in: 1..<255) / 255)
    }
    

}

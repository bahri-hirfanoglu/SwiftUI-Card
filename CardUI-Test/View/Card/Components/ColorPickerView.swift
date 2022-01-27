//
//  ColorPickerView.swift
//  CardUI-Test
//
//  Created by Admin on 28.01.2022.
//

import SwiftUI

struct ColorPickerView: View {
    @EnvironmentObject private var mainObject: MainObject
    private var type = false
    
    init(type: Bool) {
        self.type = type
    }
    var body: some View {
        VStack {
        Button(action: {}, label: {
            Text(type ? mainObject.mainBgColor.gradStart.hexaRGB! : mainObject.mainBgColor.gradStop.hexaRGB!)
                .foregroundColor(.white)
                .font(Font.custom("\(self.mainObject.baseFont)-Medium", size: 20))
                .padding(EdgeInsets(top: 2, leading: 4, bottom: 2, trailing: 4))
        }).frame(width: Double(self.mainObject.uidata.width / 2) - 10, height: 50)
                .background(type ? mainObject.mainBgColor.gradStart : mainObject.mainBgColor.gradStop)
            
            ColorPicker("Select Color: ", selection: type ? $mainObject.mainBgColor.gradStart : $mainObject.mainBgColor.gradStop)
                .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
        }
    }
}



//
//  ContentView.swift
//  CardUI-Test
//
//  Created by Admin on 26.01.2022.
//

import SwiftUI

struct MainView: View {
    
    @StateObject private var mainObject = MainObject()
    
    var body: some View {
        VStack {
            VStack {
                CardView().environmentObject(mainObject)
                Text("Color Picker")
                    .font(Font.custom("\(self.mainObject.baseFont)-Light", size: 18))
                    .padding(.top, 20)
                HStack {
                    ColorPickerView(type: false).environmentObject(mainObject)
                    ColorPickerView(type: true).environmentObject(mainObject)
                }
            }
            
        }
    }
}

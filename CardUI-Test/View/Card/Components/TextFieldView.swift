//
//  TextFieldView.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import SwiftUI

struct TextFieldView: View {

    @EnvironmentObject private var mainObject: MainObject
    
    private var text = "Name"
    private var placeholder = "Enter Text"
    private var width = 1
    private var type = 0
   
    init(text: String, placeholder: String, width: Int, type: Int) {
        self.text = text
        self.placeholder = placeholder
        self.width = width
        self.type = type
    }
    
    var body: some View {
        VStack {
            Text(self.text)
                .frame(width: width == 1 ? mainObject.uidata.width - 60 : mainObject.uidata.width - 200, height: 20, alignment: .leading)
                .font(Font.custom("\(self.mainObject.baseFont)-Light", size: 15))
                .foregroundColor(.white)
                .padding(.bottom, 5)
                         
            TextField(self.placeholder, text: type == 0 ? $mainObject.user.name : type == 1 ? $mainObject.user.age : $mainObject.user.country)
                .textFieldStyle(.roundedBorder)
                .frame(width: width == 1 ? mainObject.uidata.width - 60 : mainObject.uidata.width - 200, height: 20, alignment: .center)
                .font(Font.custom("\(self.mainObject.baseFont)-Regular", size: 15))
                .foregroundColor(.black).multilineTextAlignment(.leading)
        }.padding(.top, 30)
    }
}


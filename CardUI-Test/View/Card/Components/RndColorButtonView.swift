//
//  RndColorButtonView.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import SwiftUI

struct RndColorButtonView: View {
    @EnvironmentObject private var mainObject: MainObject

    var body: some View {
        
        Button(action: {
            mainObject.mainBgColor = mainObject.randomGradColor()
        }, label: {
            Text("Random Color")
                .foregroundColor(.white)
                .font(Font.custom("\(self.mainObject.baseFont)-Medium", size: 20))
                .padding(EdgeInsets(top: 2, leading: 4, bottom: 2, trailing: 4))
        })
            .frame(width:170)
            .background(mainObject.mainBgColor.gradStart)
            .cornerRadius(4)
        .padding(.top, 30)    }
}


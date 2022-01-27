//
//  ImageView.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import SwiftUI

struct ImageView: View {
    
    @EnvironmentObject private var mainObject: MainObject
    
    var body: some View {
        Rectangle()
            .fill(mainObject.mainBgColor.gradStart)
            .frame(width: 120, height: 120)
            .zIndex(2)
            .padding(10)
        Button {
            
        } label: {
            Image("profil")
                .resizable()
                .aspectRatio(contentMode: .fill)
        }.frame(width: 110, height: 110, alignment: .center)
            .zIndex(3)
            .padding(.leading, 15).padding(.top, 15)
        
    }
}

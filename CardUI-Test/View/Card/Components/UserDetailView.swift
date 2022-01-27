//
//  UserDetailView.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import SwiftUI

struct UserDetailView: View {
    
    @EnvironmentObject private var mainObject: MainObject

    var body: some View {
        Text("\(self.mainObject.user.name.count >= 18 ? self.mainObject.user.name + "..." : self.mainObject.user.name)")
            .foregroundColor(.white)
            .font(Font.custom("\(self.mainObject.baseFont)-Medium", size: 22))
            .padding(.top, 15).padding(.leading, 140)
            .zIndex(3)
        Text("Age: \(self.mainObject.user.age)")
            .foregroundColor(.white)
            .font(Font.custom("\(self.mainObject.baseFont)-Regular", size: 18))
            .padding(.top, 55).padding(.leading, 140)
            .zIndex(3)
        Text("Country: \(self.mainObject.getFlag(country: self.mainObject.user.country))")
            .foregroundColor(.white)
            .font(Font.custom("\(self.mainObject.baseFont)-Regular", size: 18))
            .padding(.top, 90).padding(.leading, 140)
            .zIndex(3)
        
        Button(action: {
            if mainObject.uidata.height == mainObject.uidata.minHeight {
                mainObject.uidata.height = mainObject.uidata.maxHeight
            } else { mainObject.uidata.height = mainObject.uidata.minHeight}
                }) {
                    Image(systemName: "pencil.circle.fill")
                }
                .foregroundColor(.white)
                .zIndex(3)
                .font(.system(size: 25, weight: .medium))
                .frame(width: 100, height: 100, alignment: .bottomTrailing)
                .padding(.leading, 225)
                .padding(.top, 30)
        
    }
}

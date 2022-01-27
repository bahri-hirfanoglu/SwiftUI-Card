//
//  BgRectView.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import SwiftUI

struct BgRectView: View {

    @EnvironmentObject private var mainObject: MainObject

    var body: some View {
        RoundedRectangle(cornerRadius: 16, style: .continuous)
            .fill(LinearGradient(
                gradient: .init(colors: [mainObject.mainBgColor.gradStart, mainObject.mainBgColor.gradStop]),
                startPoint: .init(x: 0.5, y: 0),
                endPoint: .init(x: 0.2, y: 0.6)
            ))
            .shadow(color: mainObject.mainBgColor.gradStop, radius: 5, x: 0, y: 5)
            .frame(width: 340, height: self.mainObject.uidata.height)
            .zIndex(1)
    }
}

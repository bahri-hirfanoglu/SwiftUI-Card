//
//  CardView.swift
//  CardUI-Test
//
//  Created by Admin on 27.01.2022.
//

import SwiftUI

struct CardView: View {
    
    @EnvironmentObject private var mainObject: MainObject

    
    var body: some View {
        ZStack(alignment: .topLeading) {
            BgRectView().environmentObject(mainObject)
            ImageView().environmentObject(mainObject)
            
            if mainObject.uidata.height == mainObject.uidata.maxHeight {
                VStack(alignment: .center) {
                    HStack {
                        TextFieldView(text: "Name", placeholder: "Enter Name", width: 1, type: 0).environmentObject(mainObject)
                    }
                    HStack {
                        TextFieldView(text: "Age", placeholder: "Enter Age", width: 2, type: 1).environmentObject(mainObject)
                        Menu {
                            ForEach(countryList, id: \.self){ country in
                                Button(action: {
                                    self.mainObject.user.country = country
                                }, label: {
                                    Text("\(country) \(self.mainObject.getFlag(country: country))")
                                })
                            }
                        }
                    label: {
                        TextFieldView(text: "Country", placeholder: "Enter Country", width: 2, type: 2).environmentObject(mainObject)
                    }
                }
                    RndColorButtonView().environmentObject(mainObject)
                    
                }.zIndex(3)
                    .padding(.top, 120)
                    .padding(.leading, 25)
            }
        }
    }
}

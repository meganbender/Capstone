//
//  Level1Screen.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/4/25.
//

import SwiftUI

struct Level1Screen: View {
    @State private var titleWidth: CGFloat = 0
    @StateObject private var mapController = MapDataController()
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // aligning the title to the
                HStack {
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("LEVEL ONE")
                            .font(.custom("Quicksand-Bold", size: 40))
                            .kerning(4)
                        Text("select an atom to learn more ")
                            .font(.custom("Quicksand-SemiBold", size: 16))
                            .foregroundStyle(Color.mcdcPurple)
                    }
                    .padding(.top, 30)
                    .padding(.trailing, 20)
                }
                
                // controls the map and the question of the day
                // this z stack is for the layers of the map and the atoms on top
                ZStack {
                    let imageW = geometry.size.width * 0.9
                    let imageH = geometry.size.height * 0.45
                    // placing our base map
                    Image("levelOne")
                        .resizable()
                        .scaledToFit()
                        .frame(width: imageW, height: imageH)
                        
                    ForEach(mapController.l1Pins) { pin in
                        Button(action: {
                            // here will be the action for the pin
                        }) {
                            Image(systemName: "atom")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.mcdcPurple)
                        }
                        .position(
                            x: imageW * pin.xPercent,
                            y: imageH * pin.yPercent
                        )
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.45)
                .padding(.top, 50)
            
                // Question of the day, later this should be added to backend
                VStack (alignment: .leading) {
                        Text("QUESTION OF THE DAY")
                            .font(.custom("Quicksand-Bold", size: 30))
                            .padding(.bottom, 10)
                        
                        Text("How do you think electrictiy can travel through the air during a lightning storm?")
                            .font(.custom("Quicksand-Regular", size: 20))
                            .foregroundStyle(Color.black.opacity(0.75))
                            .multilineTextAlignment(.center)
                }
                .padding(.top, 50)
                .padding(.leading, 10)
                .padding(.trailing, 10)
            }
        }
    }
}

#Preview {
    Level1Screen()
}

//
//  Level3Screen.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/4/25.
//

import SwiftUI

struct Level3Screen: View {
    @State private var titleWidth: CGFloat = 0
    @StateObject private var mapController = MapDataController()
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // aligning the title to the
                HStack {
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("LEVEL THREE")
                            .font(.custom("Quicksand-Bold", size: 40))
                            .kerning(4)
                    }
                    .padding(.top, 30)
                    .padding(.trailing, 20)
                }
                
                // controls the map and the question of the day
                // this z stack is for the layers of the map and the atoms on top
                ZStack {
                    // placing our base map
                    Image("levelThree")
                        .resizable()
                        .scaledToFit()
                        .frame(width: geometry.size.width * 0.9, height: geometry.size.height * 0.45)
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.45)
                .padding(.top, 50)
            
                // Question of the day, later this should be added to backend
                VStack (alignment: .leading) {
                        Text("ABOUT")
                            .font(.custom("Quicksand-Bold", size: 30))
                            .padding(.bottom, 10)
                    
                    Group {
                        Text("This level is ") +
                        Text("closed").underline() +
                        Text(" to the public. However, this floor is open ocassionally for public events, or can be rented.")
                    }
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
    Level3Screen()
}

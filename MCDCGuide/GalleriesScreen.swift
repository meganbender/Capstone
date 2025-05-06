//
//  GalleriesScreen.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/4/25.
//

import SwiftUI

struct GalleriesScreen: View {
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // aligning the title to the
                HStack {
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("GALLERIES")
                            .font(.custom("Quicksand-Bold", size: 40))
                            .kerning(4)
                        Text("select an item to learn more ")
                            .font(.custom("Quicksand-SemiBold", size: 16))
                            .foregroundStyle(Color.mcdcPurple)
                    }
                    .padding(.top, 30)
                    .padding(.trailing, 20)
                }
                
            }
        }
    }
}

#Preview {
    GalleriesScreen()
}

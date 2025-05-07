//
//  ChatScreen.swift
//  MCDCGuide
//

import SwiftUI

struct ChatScreen: View {
    // this variable is used to help grab the width of our titles
    @State private var titleWidth: CGFloat = 0
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // aligning the title to the
                HStack {
                    Spacer()
                    Image("Stretch")
                        .resizable()
                        .frame(width: 105, height: 110)
                    Text("ASK\nSTRETCH")
                        .font(.custom("Quicksand-Bold", size: 40))
                        .kerning(4)
                        .multilineTextAlignment(.trailing)
                }
                .padding(.top, 30)
                .padding(.trailing, 20)
                
            }
        }
    }
}

#Preview {
    ChatScreen()
}

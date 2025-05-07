//
//  PopupScreen.swift
//  MCDCGuide
//

import SwiftUI

struct PopupScreen: View {
//    @Environment(\.dismiss) var dismiss
//    // these are basically my passed in params
//    @Binding var gotoHomePage: Bool
//    @Binding var showPopup: Bool
    //@EnvironmentObject var appStateManager: AppStateManager
    @State private var dragOffset: CGSize = .zero
    var onDismiss: () -> Void
    
    var body: some View {
        ZStack {
            Color.mcdcPurple_bg.ignoresSafeArea()
            
            // adding my image here and placed to hang over the edge
            // need to make it dynamic so we are going to use geometryreader to do this..
            GeometryReader { geometry in
                // this may have to change based on how you do the title here... if the title will actually be dynamic then this may not work in the sense it will not be lined up to the title if the descriptors are longer or there is another item
                Image("Hexbit")
                    .resizable()
                    .frame(width: 220, height: 230)
                    .position(x: geometry.size.width * 0.09,
                              y: geometry.size.height * 0.1)
                    //.offset(x: -158, y: -280)
                
                VStack {
                    // this is where i would like some backend implementation in the future so it can be updated when needed
                    Spacer()
                    
                    Text("\t\t\tFeatured\n\t\t\tMonthly\n\t\t\tActivities")
                        .font(.custom("Quicksand-Bold", size: 36))
                        .multilineTextAlignment(.center)
                        .kerning(8)
                    
                    Text("TINY THINKERS")
                        .font(.custom("Quicksand-Bold", size: 32))
                        .foregroundStyle(Color.mcdcDarkPurple)
                        .baselineOffset(-20)
                    Text("-STEAM based series for young children-\n-FREE w/ museum entrance ticket-\n-Every Thursday Jan 9th to Feb. 27th-")
                        .font(.custom("Quicksand-Regular", size: 20))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Text("FEATURE FRIDAY")
                        .font(.custom("Quicksand-Bold", size: 32))
                        .foregroundStyle(Color.mcdcDarkPurple)
                    Text("-Uniquely themed program for families-\n-FREE with museum entrance ticket-\n-Once a month on Friday 3:30 to 5:30pm-")
                        .font(.custom("Quicksand-Regular", size: 20))
                        .multilineTextAlignment(.center)
                    
                    Spacer()
                    
                    Text("SENSORY NIGHTS")
                        .font(.custom("Quicksand-Bold", size: 32))
                        .foregroundStyle(Color.mcdcDarkPurple)
                    Text("-Designed for children and families who may have sensory based sensitivites-\n-Sponsored months are FREE and non-sponsored monts are $5-\n-Every 3rd Monday from 4:00 to 5:30pm-")
                        .font(.custom("Quicksand-Regular", size: 20))
                        .multilineTextAlignment(.center)
                    
                    //Spacer()
                    
                    Capsule()
                        .fill(Color.white.opacity(0.8))
                        .frame(width: 40, height: 6)
                        .padding(.top, 10)
                }
                .padding(.leading, 20)
                .padding(.trailing, 20)
            }
        }
        .offset(y: dragOffset.height)
        .gesture(
            DragGesture()
                .onChanged { value in
                    if value.translation.height < 0 {
                        dragOffset = value.translation
                    }
                }
                .onEnded { value in
                    if value.translation.height < -200 {
                        // user drug the screen up high enough so we can go to the home page
                        withAnimation(.spring) {
                            //appStateManager.currentState = .home
                            onDismiss()
                        }
                    } else { // was not far enough bounce back
                        withAnimation(.bouncy) {
                            dragOffset = .zero
                        }
                    }
                }
        )
    }
}

#Preview {
    PopupScreen {
        
    }
}

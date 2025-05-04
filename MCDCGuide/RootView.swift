//
//  RootView.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/2/25.
//
//  So what is this for??
//      Well it allows us to create a custome drag action for our first
//      3 pages. I want an upwards drag but unfourtantly the fullscreencover
//      does not allow for (it will dismiss downwards)
//      this is basically setting up a way to swap between the 3 screens
//      allowing for easier flow and it does not layer the pages on top
//      of each other.
//

import SwiftUI

struct RootView: View {
    @StateObject private var appStateManager = AppStateManager()
    
    var body: some View {
        ZStack{
            switch appStateManager.currentState {
            case .welcome:
                WelcomePage()
            case .popup:
                PopupPage()
            case .home:
                HomeScreen()
            }
        }
        .environmentObject(appStateManager)
        .animation(.easeInOut, value: appStateManager.currentState)
    }
}

#Preview {
    RootView()
}

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

enum AppStage {
    case welcome, popup, main
}

struct RootView: View {
    //@StateObject private var appStateManager = AppStateManager()
//    @State private var showWelcome = true
//    @State private var showPopup = false
    @State private var stage: AppStage = .welcome
    
    var body: some View {
        Group {
            switch stage {
            case .welcome:
                WelcomeScreen {
                    withAnimation {
                        stage = .popup
                    }
                }
                
            case .popup:
                PopupScreen {
                    withAnimation {
                        stage = .main
                    }
                }
                
            case .main:
                MainTabView()
            }
        }
    }
}

#Preview {
    RootView()
}

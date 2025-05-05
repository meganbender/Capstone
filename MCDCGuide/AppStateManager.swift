//
//  AppStateManager.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/2/25.
//

import SwiftUI

class AppStateManager: ObservableObject {
    @Published var currentState: AppState = .welcome
}

enum AppState {
    case welcome
    case popup
    case home
    case galleries
    case maps
    case chat
    case mainTabs
}

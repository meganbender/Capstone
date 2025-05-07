//
//  AppStateManager.swift
//  MCDCGuide
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

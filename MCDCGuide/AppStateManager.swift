//
//  AppStateManager.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/2/25.
//

import Foundation

class AppStateManager: ObservableObject {
    @Published var currentState: AppState = .welcome
}

enum AppState {
    case welcome
    case popup
    case home
}

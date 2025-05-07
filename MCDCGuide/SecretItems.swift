//
//  SecretItems.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/7/25.
//

import SwiftUI

struct SecretAPIKey {
    static let openAIKey: String = {
        guard let key = Bundle.main.object(forInfoDictionaryKey: "API_KEY") as? String else {
            fatalError("API_KEY not found in Info.plist")
        }
        return key
    }()
}

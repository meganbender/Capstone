//
//  Extensions.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/2/25.
//

import SwiftUI

// the following extension is so i can create custom hex based colors
// adopted from Jakir Hossain on Medium
extension Color {
    init(hex: Int, opacity: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: opacity
        )
    }
    
    // creating my custom colors to be used everywhere else
    static let mcdcPurple = Color(hex: 0x8b358c)
    static let mcdcPurple_light = Color(hex: 0x8b358c, opacity: 0.75)
    static let mcdcBlue = Color(hex: 0x002756)
    static let mcdcGreen = Color(hex: 0x88a03a)
    static let mcdcOrange = Color(hex: 0xe88a1c)
}

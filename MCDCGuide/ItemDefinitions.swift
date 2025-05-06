//
//  ExtraData.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/5/25.
//

import SwiftUI

struct Pin: Identifiable {
    let id = UUID()
    let xPercent: CGFloat
    let yPercent: CGFloat
    let label: String
}

struct MapItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let color: Color
    let destinationView: AnyView
}

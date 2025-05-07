//
//  ExtraData.swift
//  MCDCGuide
//

import SwiftUI

struct Pin: Identifiable {
    let id = UUID()
    let xPercent: CGFloat
    let yPercent: CGFloat
    let label: String
    let galleryLabel: String
}

struct MapItem: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let color: Color
    let destinationView: AnyView
}

struct GalleryItem: Identifiable {
    let id = UUID()
    let title: String
    let label: String
    let description: String
    let imageName: String
    let url: String
    let funFact: String
    let color: Color
}

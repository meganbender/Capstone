//
//  ExtraData.swift
//  MCDCGuide
//

import SwiftUI


//Difference between let and var
//  let is when you want a varibale to be unchaged, so this item is immutable, a constant
//  var means the variable is mutable and can be changed

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

// adopted from Jared Davidson (video: How to use chatgpt in swift)
struct Message: Identifiable {
    var id: UUID = .init()
    var content: String
    var isUser: Bool
}



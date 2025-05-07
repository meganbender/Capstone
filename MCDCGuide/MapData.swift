//
//  MapData.swift
//  MCDCGuide
//

import SwiftUI

// Observable object is a protcol in swiftui that lets a class broadcast changes to any swiftui view that is utilizing it; it will also automatically update ui when it changes
class MapDataController: ObservableObject {
    // pins for lower level
    let llPins: [Pin] = [
        Pin(xPercent: 0.415, yPercent: 0.335, label: "Water Flow", galleryLabel: "water"),
        Pin(xPercent: 0.5, yPercent: 0.67, label: "Creativity studio", galleryLabel: "creativity")
    ]

    // pins for level 1
    let l1Pins: [Pin] = [
        Pin(xPercent: 0.19, yPercent: 0.19, label: "Spark Lab", galleryLabel: "spark"),
        Pin(xPercent: 0.365, yPercent: 0.41, label: "Pattern place", galleryLabel: "pattern"),
        Pin(xPercent: 0.73, yPercent: 0.47, label: "Airforces", galleryLabel: "air"),
        Pin(xPercent: 0.6, yPercent: 0.65, label: "Magic Climber", galleryLabel: "climber"),
        Pin(xPercent: 0.75, yPercent: 0.79, label: "Outside my Window", galleryLabel: "omw")
    ]

    // pins for level 2
    let l2Pins: [Pin] = [
        Pin(xPercent: 0.14, yPercent: 0.15, label: "Digital Worlds", galleryLabel: "digital"),
        Pin(xPercent: 0.14, yPercent: 0.27, label: "Light Lab", galleryLabel: "light"),
        Pin(xPercent: 0.68, yPercent: 0.22, label: "Sound Sensations", galleryLabel: "sound"),
        Pin(xPercent: 0.465, yPercent: 0.285, label: "Building", galleryLabel: "building"),
        Pin(xPercent: 0.725, yPercent: 0.46, label: "Move", galleryLabel: "move")
    ]
    
    // the following is for map items
    let mapItems = [
        MapItem(
            title: "LOWER LEVEL",
            imageName: "lowerLevel",
            color: .mcdcBlue,
            destinationView: AnyView(LowerLevelScreen())
        ),
        MapItem(
            title: "LEVEL ONE",
            imageName: "levelOne",
            color: .mcdcGreen,
            destinationView: AnyView(Level1Screen())
        ),
        MapItem(
            title: "LEVEL TWO",
            imageName: "levelTwo",
            color: .mcdcOrange,
            destinationView: AnyView(Level2Screen())
        ),
        MapItem(
            title: "LEVEL THREE",
            imageName: "levelThree",
            color: .mcdcTeal,
            destinationView: AnyView(Level3Screen())
        )
    ]
}

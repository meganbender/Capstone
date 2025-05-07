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
        Pin(xPercent: 0.14, yPercent: 0.07, label: "Spark Lab", galleryLabel: "spark"),
        Pin(xPercent: 0.30, yPercent: 0.18, label: "Pattern place", galleryLabel: "pattern"),
        Pin(xPercent: 0.66, yPercent: 0.21, label: "Airforces", galleryLabel: "air"),
        Pin(xPercent: 0.535, yPercent: 0.295, label: "Magic Climber", galleryLabel: "climber"),
        Pin(xPercent: 0.69, yPercent: 0.37, label: "Outside my Window", galleryLabel: "omw")
    ]

    // pins for level 2
    let l2Pins: [Pin] = [
        Pin(xPercent: 0.08, yPercent: 0.058, label: "Digital Worlds", galleryLabel: "digital"),
        Pin(xPercent: 0.08, yPercent: 0.115, label: "Light Lab", galleryLabel: "light"),
        Pin(xPercent: 0.61, yPercent: 0.09, label: "Sound Sensations", galleryLabel: "sound"),
        Pin(xPercent: 0.405, yPercent: 0.1255, label: "Building", galleryLabel: "building"),
        Pin(xPercent: 0.65, yPercent: 0.205, label: "Move", galleryLabel: "move")
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

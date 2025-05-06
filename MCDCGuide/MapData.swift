//
//  MapData.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/6/25.
//

import SwiftUI

// Observable object is a protcol in swiftui that lets a class broadcast changes to any swiftui view that is utilizing it; it will also automatically update ui when it changes
class MapDataController: ObservableObject {
    let llPins: [Pin] = [
        Pin(xPercent: 0.415, yPercent: 0.335, label: "Water Flow"),
        Pin(xPercent: 0.5, yPercent: 0.67, label: "Creativity studio")
    ]

    let l1Pins: [Pin] = [
        Pin(xPercent: 0.14, yPercent: 0.07, label: "Spark Lab"),
        Pin(xPercent: 0.30, yPercent: 0.18, label: "Pattern place"),
        Pin(xPercent: 0.66, yPercent: 0.21, label: "Airforces"),
        Pin(xPercent: 0.535, yPercent: 0.295, label: "Magic Climber"),
        Pin(xPercent: 0.69, yPercent: 0.37, label: "Outside my Window")
    ]

    let l2Pins: [Pin] = [
        Pin(xPercent: 0.08, yPercent: 0.058, label: "Digital Worlds"),
        Pin(xPercent: 0.08, yPercent: 0.115, label: "Light Lab"),
        Pin(xPercent: 0.61, yPercent: 0.09, label: "Sound Sensations"),
        Pin(xPercent: 0.405, yPercent: 0.1255, label: "Building"),
        Pin(xPercent: 0.65, yPercent: 0.205, label: "Move")
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

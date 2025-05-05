//
//  MainTabView.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/4/25.
//

import SwiftUI

struct MainTabView: View {
    // Okay i want to customize my tabview background. We are going to make a customized background effect
    init() {
        let tabBarAppearance = UITabBarAppearance()
        tabBarAppearance.configureWithTransparentBackground()
        tabBarAppearance.backgroundEffect = UIBlurEffect(style: .extraLight)
        tabBarAppearance.backgroundColor = UIColor.white
        tabBarAppearance.shadowImage = nil
        tabBarAppearance.shadowColor = nil
        
        UITabBar.appearance().standardAppearance = tabBarAppearance
        UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
    }
    
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
            MapsScreen()
                .tabItem {
                    Image(systemName: "map")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
            GalleriesScreen()
                .tabItem {
                    Image(systemName: "lightbulb")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
            ChatScreen()
                .tabItem {
                    Image(systemName: "questionmark.bubble")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 50, height: 50)
                }
        }
        .accentColor(Color.mcdcDarkPurple)
    }
}

#Preview {
    MainTabView()
}

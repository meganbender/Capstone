//
//  WelcomePage.swift
//  MCDCGuide
//
//  Created by Megan Bender on 4/30/25.
//
// use this to find the font names
//  init(){
//        for familyName in UIFont.familyNames {
//         print(familyName)
//            for fontname in UIFont.fontNames(forFamilyName: familyName){
//                print("--\(fontname)")
//            }
//
//        }
//   }
//
//

import SwiftUI

struct WelcomeScreen: View {
    //@State var showPopup: Bool = false
    //@State var gotoHomePage: Bool = false
    // the remote control to help us view see and change the value appState which is of type AppState
    @EnvironmentObject var appStateManager: AppStateManager
    var onContinue: () -> Void
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("WELCOME")
                .font(.custom("Quicksand-Bold", size: 50))
                .multilineTextAlignment(.center)
                .kerning(10)
            
            Spacer()
            
            Image("mcdcBuildingImage", label: Text("Picture of the Museum"))
            
            Text("Magic City\nDiscovery Center")
                .font(.custom("Quicksand-SemiBold", size: 28))
                .multilineTextAlignment(.center)
                .lineSpacing(0)
                .kerning(8)
            
            Text("Discover. Create. Explore. Play.")
                .font(.custom("Quicksand-Medium", size: 20))
                .multilineTextAlignment(.center)
                .foregroundStyle(Color.mcdcPurple_light)
                .kerning(2.5)
            
            Spacer()
            
            Button(action: {
                // PLACE ACTION HERE (go to home page (or trigger popup)
                //showPopup.toggle()
                onContinue()
            }, label: {
                Text(" DISCOVER NOW ")
                    .padding(10)
                    .foregroundStyle(Color.white)
                    .background(Color.mcdcPurple.cornerRadius(20))
                    .font(.custom("Quicksand-SemiBold", size: 24))
                    .kerning(4)
            })
            
            Spacer()
        }
    }
}

#Preview {
    WelcomeScreen {
        
    }
}

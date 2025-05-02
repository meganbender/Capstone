//
//  WelcomePage.swift
//  MCDCGuide
//
//  Created by Megan Bender on 4/30/25.
//

import SwiftUI

struct WelcomePage: View {
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
                .kerning(2)
            
            Spacer()
            
            Button(" DISCOVER NOW ") {
                // PLACE ACTION HERE (go to home page (or trigger popup)
            }
            .multilineTextAlignment(.center)
            .clipShape(RoundedRectangle(cornerRadius: 20))
            .buttonStyle(.borderedProminent)
            .tint(.mcdcPurple)
            .font(.custom("Quicksand-SemiBold", size:24))
            .kerning(4)
            
            Spacer()
        }
    }
    
    /* use this to find the font names
    init(){
        for familyName in UIFont.familyNames {
            print(familyName)
            for fontname in UIFont.fontNames(forFamilyName: familyName){
                print("--\(fontname)")
            }
                    
        }
    }
     */
}

#Preview {
    WelcomePage()
}

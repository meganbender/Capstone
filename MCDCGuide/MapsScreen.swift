//
//  MapsScreen.swift
//  MCDCGuide
//

import SwiftUI



struct MapsScreen: View {
    // this variable will help us get correct positioning for our title in the top right hadn corner of a screen as well as the back arrow in the top left
    @State private var titleWidth: CGFloat = 0
    @StateObject private var mapController = MapDataController()
    
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                VStack (spacing: 0) {
                    // Title of Page
                    // aligning the title to the
                    HStack {
                        Spacer()
                        VStack (alignment: .trailing) {
                            Text("MAPS")
                                .font(.custom("Quicksand-Bold", size: 40))
                                .kerning(4)
                            Text("select an item to learn more ")
                                .font(.custom("Quicksand-SemiBold", size: 16))
                                .foregroundStyle(Color.mcdcPurple)
                        }
                        .padding(.top, 30)
                        .padding(.trailing, 20)
                        .padding(.bottom, 50)
                    }
                    
                    // Scrollview for the maps
                    ScrollView(.horizontal) {
                        HStack(spacing: 16){
                            ForEach(mapController.mapItems) { item in
                                // a navigaiton link allows us to make each of our map items a button to connect us to the other screnn wihtout haveing to explicitly make a button here
                                NavigationLink(destination: item.destinationView) {
                                    VStack(alignment: .center, spacing: 8) {
                                        Text(item.title)
                                            .font(.custom("Quicksand-Bold", size: 40))
                                            .foregroundStyle(item.color)
                                        Image(item.imageName)
                                            .resizable()
                                            .scaledToFill()
                                            .frame(width: 380, height: 320)
                                            .clipShape(RoundedRectangle(cornerRadius: 16))
                                            .scrollTransition {content, phase in
                                                content
                                                    .opacity(phase.isIdentity ? 1.0 : 0.25)
                                                    .scaleEffect(x: phase.isIdentity ? 1.0 : 0.25, y: phase.isIdentity ? 1.0 : 0.25)
                                                    .offset(y: phase.isIdentity ? 0 : 50)
                                            }
                                            .background(
                                                RoundedRectangle(cornerRadius: 16)
                                                    .fill(Color.white)
                                                    .shadow(color: .black.opacity(0.1), radius: 10, x: 0, y: 6)
                                            )
                                            .padding()
                                    }
                                    .frame(width: 380)
                                }
                            }
                        }
                        .scrollTargetLayout()
                    }
                    .scrollTargetLayout()
                    .contentMargins(10, for: .scrollContent)
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.visible)
                        
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    MapsScreen()
}

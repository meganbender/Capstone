//
//  LowerLevelScreen.swift
//  MCDCGuide
//

import SwiftUI

struct LowerLevelScreen: View {
    @State private var titleWidth: CGFloat = 0
    @StateObject private var mapController = MapDataController()
    @StateObject private var galleryController = GalleryDataController()
    @State private var selectedGallery: GalleryItem? = nil
    @State private var showPopup = false
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // aligning the title to the
                HStack {
                    Spacer()
                    VStack (alignment: .trailing) {
                        Text("LOWER LEVEL")
                            .font(.custom("Quicksand-Bold", size: 40))
                            .kerning(4)
                        Text("select an atom to learn more ")
                            .font(.custom("Quicksand-SemiBold", size: 16))
                            .foregroundStyle(Color.mcdcPurple)
                    }
                    .padding(.top, 30)
                    .padding(.trailing, 20)
                }
                
                // controls the map and the question of the day
                // this z stack is for the layers of the map and the atoms on top
                ZStack {
                    let imageW = geometry.size.width * 0.9
                    let imageH = geometry.size.height * 0.45
                    // placing our base map
                    Image("lowerLevel")
                        .resizable()
                        .scaledToFit()
                        .frame(width: imageW, height: imageH)
                        
                    ForEach(mapController.llPins) { pin in
                        Button(action: {
                            // here will be the action for the pin; but we need to find the matching gallery item so the following is a function that will help us with that by using an expression
                            if let matchingGallery = galleryController.LLGalleries.first(where: { $0.label == pin.galleryLabel }) {
                                selectedGallery = matchingGallery
                                showPopup = true
                            }
                            
                        }) {
                            Image(systemName: "atom")
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 35, height: 35)
                                .foregroundColor(.mcdcPurple)
                        }
                        .position(
                            x: imageW * pin.xPercent,
                            y: imageH * pin.yPercent
                        )
                    }
                }
                .frame(width: geometry.size.width, height: geometry.size.height * 0.45)
                .padding(.top, 50)
            
                // Question of the day, later this should be added to backend
                VStack (alignment: .leading) {
                        Text("QUESTION OF THE DAY")
                            .font(.custom("Quicksand-Bold", size: 30))
                            .padding(.bottom, 10)
                        
                        Text("Why do you think water moves faster through a narrow space than a wide one?")
                            .font(.custom("Quicksand-Regular", size: 20))
                            .foregroundStyle(Color.black.opacity(0.75))
                            .multilineTextAlignment(.center)
                            .padding(.leading)
                }
                .padding(.top, 50)
                .padding(.leading, 10)
                .padding(.trailing, 10)
            } // the .sheet had to be fixed the original was causing an error in which the first item would load up even as nil but now this forces and item to be passed through so we dont cause that error
            .sheet(item: $selectedGallery) { gallery in
                GalleryPopup(gallery: gallery)
                    .presentationDragIndicator(.visible)
                    .presentationDetents([.medium, .large])
                    .presentationCornerRadius(20)
            }
            
        }
    }
}

#Preview {
    LowerLevelScreen()
}

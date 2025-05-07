//
//  GalleriesScreen.swift
//  MCDCGuide
//

import SwiftUI

struct GalleriesScreen: View {
    // this allows us to grab that info for our galleries from the controller
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
                        Text("GALLERIES")
                            .font(.custom("Quicksand-Bold", size: 40))
                            .kerning(4)
                        Text("select an item to learn more ")
                            .font(.custom("Quicksand-SemiBold", size: 16))
                            .foregroundStyle(Color.mcdcPurple)
                    }
                    .padding(.top, 30)
                    .padding(.trailing, 20)
                }
                
                // first group: lower leve
                VStack(spacing: 0) {
                    HStack {
                        Text("Lower Level")
                            .font(.custom("Quicksand-Bold", size: 24))
                            .foregroundStyle(Color.mcdcBlue)
                            .kerning(4)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    
                    // First set of items to scroll through
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack (spacing: 0){
                            ForEach(galleryController.LLGalleries) { item in
                                // Creating the button image
                                Button(action: {
                                    // item is selected so grab it and set show popup to true
                                    selectedGallery = item
                                    showPopup = true
                                }) {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .padding()
                                        .frame(height: 125)
                                        .scrollTransition {content, phase in
                                            content
                                                .opacity(phase.isIdentity ? 1.0 : 0.25)
                                        }
                                }
                            }
                        }
                        .padding(.leading, 20)
                    }
//                    .sheet(isPresented: $showPopup) {
//                        if let gallery = selectedGallery {
//                            GalleryPopup(gallery: gallery)
//                                .presentationDragIndicator(.visible)
//                                .presentationDetents([.medium, .large])
//                                .presentationCornerRadius(20)
//                            
//                        }
//                    }
                }
                .padding(.top, 50)
                
                // second group level one
                VStack(spacing: 0) {
                    HStack {
                        Text("Level One")
                            .font(.custom("Quicksand-Bold", size: 24))
                            .foregroundStyle(Color.mcdcGreen)
                            .kerning(4)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    
                    // Second set of items to scroll through
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack (spacing: 0){
                            ForEach(galleryController.L1Galleries) { item in
                                // Creating the button image
                                Button(action: {
                                    // item is selected so grab it and set show popup to true
                                    selectedGallery = item
                                    showPopup = true
                                }) {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .padding()
                                        .frame(height: 125)
                                        .scrollTransition {content, phase in
                                            content
                                                .opacity(phase.isIdentity ? 1.0 : 0.25)
                                        }
                                }
                            }
                        }
                        .padding(.leading, 20)
                    }
//                    .sheet(isPresented: $showPopup) {
//                        if let gallery = selectedGallery {
//                            GalleryPopup(gallery: gallery)
//                                .presentationDragIndicator(.visible)
//                                .presentationDetents([.medium, .large])
//                                .presentationCornerRadius(40)
//                            
//                        }
//                    }
                }
                .padding(.top, 25)
                
                // third group: level two
                VStack(spacing: 0) {
                    HStack {
                        Text("Level Two")
                            .font(.custom("Quicksand-Bold", size: 24))
                            .foregroundStyle(Color.mcdcOrange)
                            .kerning(4)
                            .multilineTextAlignment(.leading)
                            .padding(.leading, 20)
                        Spacer()
                    }
                    
                    // Second set of items to scroll through
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack (spacing: 0){
                            ForEach(galleryController.L2Galleries) { item in
                                // Creating the button image
                                Button(action: {
                                    // item is selected so grab it and set show popup to true
                                    selectedGallery = item
                                    showPopup = true
                                }) {
                                    Image(item.imageName)
                                        .resizable()
                                        .scaledToFit()
                                        .cornerRadius(10)
                                        .padding()
                                        .frame(height: 125)
                                        .scrollTransition {content, phase in
                                            content
                                                .opacity(phase.isIdentity ? 1.0 : 0.25)
                                        }
                                }
                            }
                        }
                        .padding(.leading, 20)
                    }
//                    .sheet(isPresented: $showPopup) {
//                        if let gallery = selectedGallery {
//                            GalleryPopup(gallery: gallery)
//                                .presentationDragIndicator(.visible)
//                                .presentationDetents([.medium, .large])
//                                .presentationCornerRadius(20)
//                            
//                        }
//                    }
                }
                .padding(.top, 25)
                Spacer()
            }// the .sheet had to be fixed the original was causing an error in which the first item would load up even as nil but now this forces and item to be passed through so we dont cause that error
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
    GalleriesScreen()
}

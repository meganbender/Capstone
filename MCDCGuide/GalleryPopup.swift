//
//  GalleryPopup.swift
//  MCDCGuide
//

import SwiftUI

struct GalleryPopup: View {
    let gallery: GalleryItem
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack (spacing: 20){
                    Text(gallery.title)
                        .font(.custom("Quicksand-Bold", size: 28))
                    Text("\t") + Text(gallery.description)
                        .font(.custom("Quicksand-Regular", size: 20))
                }
                .padding(.top, 20)
                
                VStack {
                    Text("Fun Fact:")
                        .font(.custom("Quicksand-Bold", size: 24))
                    Text(gallery.funFact)
                        .font(.custom("Quicksand-Regular", size: 20))
                        .multilineTextAlignment(.center)
                }
                .padding(.top, 20)
                
                Button(action: {
                    // PLACE ACTION HERE: which will link to the website
                    if let url = URL(string: gallery.url) {
                        UIApplication.shared.open(url)
                    }
                }, label: {
                    Text(" LEARN MORE ")
                        .padding(5)
                        .foregroundStyle(Color.white)
                        .background(gallery.color.opacity(0.8))
                        .font(.custom("Quicksand-Bold", size: 20))
                        .kerning(4)
                })
                .cornerRadius(20)
                .padding(.top, 20)
                
                Spacer()
            }
            .padding(10)
            .background(gallery.color.opacity(0.1))
        }
    }
        
}

#Preview {
    let sampleGallery = GalleryItem(
        title: "Sample Gallery", label: "item",
        description: "Here is the description section for the sample gallery for viewing purposes and to test our overall layout",
        imageName: "Hexbit",
        url: "https://google.com",
        funFact: "I love dogs",
        color: .mcdcBlue)
    
    return GalleryPopup(gallery: sampleGallery)
        //.frame(width: 350, height: 400)
        //.background(Color.mcdcGreen.opacity(0.2))
        //.cornerRadius(20)
}

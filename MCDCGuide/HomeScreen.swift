//
//  HomeScreen.swift
//  MCDCGuide
//
//  Created by Megan Bender on 5/2/25.
//

import SwiftUI

struct HomeScreen: View {
    @Environment(\.verticalSizeClass) var verticalSizeClass
    
    // Data for our home screen
    let campImages = ["campImage1", "campImage2", "campImage3", "campImage4", "campImage5"]
    
    let admissionData = [
        ["Ages 1 -64", "$15"],
        ["Seniors 65+", "$14"],
        ["Military", "$12"]
    ]
    
    let hoursData = [
        ["Monday", "9am - 4pm"],
        ["Tuesday", "Closed"],
        ["Wednesday", "9am - 4pm"],
        ["Thursday", "10am - 6pm"],
        ["Friday", "10am - 6pm"],
        ["Saturday", "10am - 6pm"],
        ["Sunday", "10am - 6pm"]
    ]
    
    let membershipData = [
        ["Family", "$200/year"],
        ["Family Plus", "$250/year"],
        ["Military", "$160/year"],
        ["Military Plus", "$200/year"],
        ["Grandparent", "$200/year"]
    ]

    var body: some View {
        GeometryReader { geometry in
            ScrollView (showsIndicators: false) {
                // Logo
                HStack(alignment: .center, spacing: 0) {
                    Image("Hexbit2")
                        .resizable()
                        .frame(width: 105, height: 110)
                        .scaleEffect(x: -1, y:1)
                    
                    VStack (alignment: .leading){
                        // the following is NOT a good way to handle this but again.....we just need the first working prototype
                        Text("MAGIC CITY")
                            .font(.custom("Quicksand-Semibold", size: 24))
                        //.kerning(4)
                        Text("DISCOVERY")
                            .font(.custom("Quicksand-Bold", size: 32))
                        //.kerning(4)
                        Text("CENTER")
                            .font(.custom("Quicksand-Semibold", size: 24))
                        //.kerning(4)
                    }
                    .kerning(4)
                    .padding(.leading, -8)
                }
                .frame(maxWidth: .infinity, alignment: .center)
                .padding(.top)
                
                // Starting main content here
                VStack (spacing: 0) {
                    Text("Upcoming Camps\n& Classes")
                        .font(.custom("Quicksand-Bold", size:24))
                        .kerning(2)
                        .frame(width: geometry.size.width, alignment: .leading)
                        .offset(x: geometry.size.width * 0.06)
                        .padding(.top, 40)
                    // the following is making the custome underline for the header of a section
                    Path { path in
                        path.move(to: CGPoint(x: geometry.size.width * 0.06, y: 0))
                        path.addLine(to: CGPoint(x: 265, y: 0))
                    }
                    .stroke(Color.mcdcPurple, lineWidth: 3)
                    .frame(height: 1)
                    
                    // Here is the first horizontal scroll view for the camps and classes
                    ScrollView(.horizontal, showsIndicators: true) {
                        HStack (spacing: 0){
                            ForEach(campImages, id: \.self) { name in
                                // the images we want to be in the scroll
                                Image(name)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 200, height: 200)
                                    .containerRelativeFrame(.horizontal, count: verticalSizeClass == .regular ? 1 : 4, spacing: 0)
                                    .scrollTransition {content, phase in
                                        content
                                            .opacity(phase.isIdentity ? 1.0 : 0.25)
                                            .scaleEffect(x: phase.isIdentity ? 1.0 : 0.25, y: phase.isIdentity ? 1.0 : 0.25)
                                            .offset(y: phase.isIdentity ? 0 : 50)
                                    }
                            }
                        }
                        .scrollTargetLayout()
                    }
                    .scrollTargetLayout()
                    .contentMargins(10, for: .scrollContent)
                    .scrollTargetBehavior(.viewAligned)
                    .scrollIndicators(.visible)
                    
                    // NOW STARTING THE TICKETS, MEMBERSHIP, & CONTACT INFO SECTION
                    VStack (spacing: 20) {
                        // Section Header
                        Text("Tickets, Membership\n& Contact Info")
                            .font(.custom("Quicksand-Bold", size:24))
                            .kerning(2)
                            .frame(width: geometry.size.width, alignment: .leading)
                            .offset(x: geometry.size.width * 0.06)
                            .padding(.top, 20)
                        // the following is making the horizontal line
                        Path { path in
                            path.move(to: CGPoint(x: geometry.size.width * 0.06, y: 0))
                            path.addLine(to: CGPoint(x: 310, y: 0))
                        }
                        .stroke(Color.mcdcPurple, lineWidth: 3)
                        
                        VStack (alignment: .leading, spacing: 5) {
                            // Hours Header
                            Text("Hours:")
                                .font(.custom("Quicksand-Semibold", size: 24))
                                .frame(width: geometry.size.width, alignment: .leading)
                                .offset(x: geometry.size.width * 0.06)
                                .foregroundStyle(Color.mcdcDarkPurple)
                            Spacer()
                            // Writing out the table for hours data
                            ForEach(hoursData, id: \.self) { row in
                                HStack {
                                    Text(row[0])
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .offset(x: geometry.size.width * 0.15)
                                    Text(row[1])
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .offset(x: geometry.size.width * -0.15)
                                }
                            }
                        }
                        
                        Spacer()
                        
                        // ADMISSIONS
                        VStack (alignment: .center, spacing: 5) {
                            // Admission Header
                            Text("General Admissions:")
                                .font(.custom("Quicksand-Semibold", size: 24))
                                .frame(width: geometry.size.width, alignment: .leading)
                                .offset(x: geometry.size.width * 0.06)
                                .foregroundStyle(Color.mcdcDarkPurple)
                            Spacer()
                            // writing out the admissions data
                            ForEach(admissionData, id: \.self) { row in
                                HStack {
                                    Text(row[0])
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .offset(x: geometry.size.width * 0.15)
                                    Text(row[1])
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .offset(x: geometry.size.width * -0.15)
                                }
                            }
                            Spacer()
                            // button to allow a user to buy tickets
                            Button(action: {
                                // PLACE ACTION HERE: which will link to the website
                                if let url = URL(string: "https://sales.magiccitydiscoverycenter.com/calendar.aspx") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text(" BUY TICKETS ")
                                    .padding(5)
                                    .foregroundStyle(Color.white)
                                    .background(Color.mcdcDarkPurple.cornerRadius(20))
                                    .font(.custom("Quicksand-Bold", size: 16))
                                    .kerning(4)
                            })
                        }
                        
                        Spacer()
                        
                        // MEMBERSHIPS
                        VStack (alignment: .center, spacing: 5) {
                            // Memberships Header
                            Text("Memberships:")
                                .font(.custom("Quicksand-Semibold", size: 24))
                                .frame(width: geometry.size.width, alignment: .leading)
                                .offset(x: geometry.size.width * 0.06)
                                .foregroundStyle(Color.mcdcDarkPurple)
                            
                            Spacer()
                            
                            ForEach(membershipData, id: \.self) { row in
                                HStack {
                                    Text(row[0])
                                        .frame(maxWidth: .infinity, alignment: .leading)
                                        .offset(x: geometry.size.width * 0.15)
                                    Text(row[1])
                                        .frame(maxWidth: .infinity, alignment: .trailing)
                                        .offset(x: geometry.size.width * -0.15)
                                }
                            }
                            Spacer()
                            // button to allow a user to buy meberships and such
                            Button(action: {
                                // PLACE ACTION HERE: which will link to the website
                                if let url = URL(string: "https://sales.magiccitydiscoverycenter.com/membership.aspx") {
                                    UIApplication.shared.open(url)
                                }
                            }, label: {
                                Text(" BUY MEMBERSHIP ")
                                    .padding(5)
                                    .foregroundStyle(Color.white)
                                    .background(Color.mcdcDarkPurple.cornerRadius(20))
                                    .font(.custom("Quicksand-Bold", size: 16))
                                    .kerning(4)
                            })
                        }
                        
                        Spacer()
                        
                        // CONTACT
                        VStack (alignment: .center, spacing: 5) {
                            // Now adding contact info and such
                            Text("Contact Us Now:")
                                .font(.custom("Quicksand-Semibold", size: 24))
                                .frame(width: geometry.size.width, alignment: .leading)
                                .offset(x: geometry.size.width * 0.06)
                                .foregroundStyle(Color.mcdcDarkPurple)
                            HStack (spacing: 80) {
                                // add the links to email and the phone
                                // PHONE
                                Button(action: {
                                    // PLACE ACTION HERE: which will link to the website
                                    if let url = URL(string: "tel://7018587529") {
                                        UIApplication.shared.open(url)
                                    }
                                }, label: {
                                    Text(" CALL ")
                                        .padding(5)
                                        .foregroundStyle(Color.white)
                                        .background(Color.mcdcDarkPurple.cornerRadius(20))
                                        .font(.custom("Quicksand-Bold", size: 16))
                                        .kerning(4)
                                })
                                
                                // EMAIL
                                Button(action: {
                                    // PLACE ACTION HERE: which will link to the website
                                    if let url = URL(string: "mailto:info@magiccitydiscoverycenter.com") {
                                        UIApplication.shared.open(url)
                                    }
                                }, label: {
                                    Text(" EMAIL ")
                                        .padding(5)
                                        .foregroundStyle(Color.white)
                                        .background(Color.mcdcDarkPurple.cornerRadius(20))
                                        .font(.custom("Quicksand-Bold", size: 16))
                                        .kerning(4)
                                })
                            }
                        }
                    }
                }
                .padding(.top, -20)
            }
            
        }
    }
}

#Preview {
    HomeScreen()
}

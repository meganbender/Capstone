//
//  MessageView.swift
//  MCDCGuide
//

import SwiftUI

struct MessageView: View {
    var message: Message
    
    var body: some View {
        Group {
            if message.isUser {
                HStack {
                    Spacer()
                    
                    HStack (alignment: .bottom){
                        Text(message.content)
                            .font(.custom("Quicksand-SemiBold", size: 17))
                            .padding()
                            .background(Color.gray.opacity(0.11))
                            .foregroundStyle(Color.mcdcPurple)
                            .multilineTextAlignment(.trailing)
                            .cornerRadius(20)
                        Image(systemName: "person.crop.circle")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(Color.black)
                            .padding(.trailing, 8)
                        
                    }
                
                }
            } else {
                HStack {
                    HStack (alignment: .bottom) {
                        Image("StretchMessage")
                            .resizable()
                            .frame(width: 25, height: 25)
                            .padding(.leading, 8)
                        Text(message.content)
                            .font(.custom("Quicksand-SemiBold", size: 17))
                            .padding()
                            .background(Color.mcdcPurple_bg)
                            .multilineTextAlignment(.leading)
                            .cornerRadius(20)
                    }
                    
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    // to test each uncommment which case you want to deal with
    
    //let sampleMessage = Message(content: "Hello there i is user", isUser: true)
    //return MessageView(message: sampleMessage)
    
    let sampleMessage2 = Message(content: "Hello there i is bot", isUser: false)
    return MessageView(message: sampleMessage2)
}

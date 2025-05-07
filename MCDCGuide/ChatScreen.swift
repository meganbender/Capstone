//
//  ChatScreen.swift
//  MCDCGuide
//

import SwiftUI

struct ChatScreen: View {
    // this variable is used to help grab the width of our titles
    @State private var titleWidth: CGFloat = 0
    @StateObject private var chatController: ChatController = .init()
    @State var contentString: String = ""
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                // aligning the title to the
                HStack {
                    Spacer()
                    Image("Stretch")
                        .resizable()
                        .frame(width: 105, height: 110)
                    Text("ASK\nSTRETCH")
                        .font(.custom("Quicksand-Bold", size: 40))
                        .kerning(4)
                        .multilineTextAlignment(.trailing)
                }
                .padding(.top, 30)
                .padding(.trailing, 20)
                
                VStack {
                    ScrollView {
                        ForEach(chatController.messages) { messageItem in
                            MessageView(message: messageItem)
                                .padding(5)
                        }
                    }
                    Divider()
                    HStack {
                        TextField("Message", text: self.$contentString, axis: .vertical)
                            .foregroundStyle(Color.mcdcPurple)
                            .font(.custom("Quicksand-Regular", size: 18))
                            .padding()
                            .background(Color.white)
                            .cornerRadius(20)
                            .shadow(color: Color.black.opacity(0.2), radius: 5, x: 0, y: 3)
                        Button {
                            // dealing with sending a message to chatgpt
                            self.chatController.sendNewMessage(content: contentString)
                            DispatchQueue.main.async {
                                contentString = ""
                            }
                        } label: {
                            Image(systemName: "paperplane.fill")
                                .resizable()
                                .frame(width: 24, height: 24)
                                .padding(.trailing, 4)
                                .foregroundStyle(Color.mcdcPurple)
                        }
                    }
                    .padding()
                }
            }
        }
    }
}

#Preview {
    ChatScreen()
}

//
//  ChatController.swift
//  MCDCGuide
//

import SwiftUI
import OpenAI

class ChatController: ObservableObject {
    @Published var messages: [Message] = []
    
    let openAI = OpenAI(apiToken: SecretAPIKey.openAIKey)
    
    func sendNewMessage(content: String) {
        let userMessage = Message(content:content, isUser: true)
        self.messages.append(userMessage)
        getBotReply()
    }
    
    // we now have the user messages are added to our local database but we need to send this over to openai
    func getBotReply() {
        // the chat query is the info we are sending and then how we want to grab it
        openAI.chats(query: .init(model: .gpt3_5Turbo, messages: self.messages.map({Chat(role: .user, content: $0.content)}))) { result in
            switch result {
            case .success(let success):
                guard let choice = success.choices.first else {
                    return
                }
                let message = choice.message.content
                
                // having a thread error so needed this..
                DispatchQueue.main.async {
                    self.messages.append(Message(content: message ?? "", isUser: false))
                }
                
            case .failure(let failure):
                print(failure)
            }
        }
    }
}


//
//  ChatView.swift
//  FamilyChat
//
//  Created by John Doe on 27/10/2022.
//

import SwiftUI
import RealmSwift

struct ChatView: View {
    
    @ObservedResults(ChatMessage.self, sortDescriptor: SortDescriptor(keyPath: "timestamp", ascending: true)) var messages
    
    let username: String
    let room: String
    
    @State private var messageText = ""
    
    var body: some View {
        VStack{
            ForEach(messages) { message in
                HStack {
                    if message.author == username { Spacer() }
                    Text(message.text)
                    if message.author != username { Spacer() }
                }
                .padding()
            }
            Spacer()
            HStack{
                TextField("New message ", text: $messageText)
                    .padding(8)
                    .background(.yellow)
                    .clipShape(Capsule())
                
                Button(action: addMessage) {
                    Image(systemName: "paperplane.fill")
                }
                
                .disabled(messageText == "")
            }
            .padding()
            .navigationBarTitle("\(room)", displayMode: .inline)
        }
    }
        private func addMessage(){
            let message = ChatMessage(room: room, author: username, text: messageText)
            $messages.append(message)
            messageText = ""
        }
    }


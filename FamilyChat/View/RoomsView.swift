//
//  RoomsView.swift
//  FamilyChat
//
//  Created by John Doe on 27/10/2022.
//

import SwiftUI

struct RoomsView: View {
    
    let username: String
    let rooms = ["Кухня", "Гостинная", "Кабинет"]
    
    var body: some View {
        
        List {
            if let realmUser = realmApp.currentUser {
                ForEach(rooms, id: \.self) { room in
                    NavigationLink(destination: ChatView(username: username, room: room)
                        .environment(\.realmConfiguration, realmUser.configuration(partitionValue: room))) {
                            
                            Text(room)
                        }
                }
            }
        }
        .navigationBarTitle("Chats", displayMode: .inline)
        
    }
}


//struct RoomsView_Previews: PreviewProvider {
//    static var previews: some View {
//        RoomsView()
//    }
//}

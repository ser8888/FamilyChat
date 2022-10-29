//
//  ChatMessage.swift
//  FamilyChat
//
//  Created by John Doe on 27/10/2022.
//

import Foundation
import RealmSwift

class ChatMessage: Object, ObjectKeyIdentifiable {
    
    @Persisted(primaryKey: true) var _id: ObjectId
    
    @Persisted var room: String
    @Persisted var author: String
    @Persisted var text: String
    @Persisted var timestamp = Date()
    
    convenience init( room: String, author: String, text: String) {
        self.init()
        self.room = room
        self.author = author
        self.text = text
    }
}

//
//  FamilyChatApp.swift
//  FamilyChat
//
//  Created by John Doe on 26/10/2022.
//

import SwiftUI
import RealmSwift

let realmApp = RealmSwift.App(id: "chat-wvust")

@main
struct FamilyChatApp: SwiftUI.App {
    var body: some Scene {
        WindowGroup {
            let _ = print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
            ContentView()
        }
    }
}

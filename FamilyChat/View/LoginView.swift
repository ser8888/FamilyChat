//
//  LoginView.swift
//  FamilyChat
//
//  Created by John Doe on 27/10/2022.
//

import SwiftUI

struct LoginView: View {
    @Binding var username: String
    
    var body: some View {
        ProgressView()
            .onAppear(perform: login)
    }
    func login() {
        Task {
            do {
                let user = await try realmApp.login(credentials: .anonymous)
                username = user.id
            } catch {
                print("Failed to log in: \(error.localizedDescription) ")
            }
        }
    }
    
}

//struct LoginView_Previews: PreviewProvider {
//    static var previews: some View {
//        LoginView()
//    }
//}

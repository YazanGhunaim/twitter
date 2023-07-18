//
//  TwitterCloneApp.swift
//  TwitterClone
//
//  Created by Yazan Ghunaim on 7/8/23.
//

import SwiftUI
import Firebase

@main
struct TwitterCloneApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                LoginView()
            }
        }
    }
}

//
//  SilentMoonApp.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 02.07.26.
//

import SwiftUI

@main
struct SilentMoonApp: App {

    @StateObject private var authManager = AuthManager()
    var body: some Scene {
        WindowGroup {
            Group {
                if authManager.isLoggedIn {
                    MainView()
                } else {
                    LoginView()
                }
            }
            .environmentObject(authManager)
        }
    }
}

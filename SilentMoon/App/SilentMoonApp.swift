//
//  SilentMoonApp.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 02.07.26.
//

import SwiftUI

@main
struct SilentMoonApp: App {

    @StateObject private var routerManager = RouterManager()

    init() {
        UserDefaults.standard.set(false, forKey: "IsLoggedIn")
    }
    var body: some Scene {
        WindowGroup {
            Group {
                if routerManager.isLoggedIn {
                    Home()
                } else {
                    LoginView()
                }
            }
            .environmentObject(routerManager)
        }
    }
}

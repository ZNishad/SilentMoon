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

//    init() {
//        UserDefaults.standard.set(false, forKey: "IsLoggedIn")
//    }

    var body: some Scene {
        WindowGroup {
            Group {
                if routerManager.isLoggedIn {
                    MainRouterView()
                        .transition(.asymmetric(
                            insertion: .move(edge: .bottom).combined(with: .opacity),
                            removal: .opacity
                        ))
                } else {
                    AuthRouterView()
                        .transition(.asymmetric(
                            insertion: .move(edge: .bottom).combined(with: .opacity),
                            removal: .opacity
                        ))
                }
            }
            .animation(.spring(duration: 0.4), value: routerManager.isLoggedIn)
            .environmentObject(routerManager)
        }
    }
}

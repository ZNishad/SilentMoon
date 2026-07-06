//
//  AppRouter.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 05.07.26.
//

import SwiftUI 
import Combine

@MainActor
final class AuthManager: ObservableObject {
    @Published var isLoggedIn: Bool = UserDefaults.standard.bool(forKey: "IsLoggedIn")

    func login() {
        isLoggedIn = true
        UserDefaults.standard.set(true, forKey: "IsLoggedIn")
    }

    func logout() {
        isLoggedIn = false
        UserDefaults.standard.set(false, forKey: "IsLoggedIn")
    }
}

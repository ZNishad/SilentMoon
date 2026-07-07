//
//  AuthRouter.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 05.07.26.
//

import Combine
import SwiftUI

enum AuthDestination: Hashable {
    case signIn
    case signUp
    case home
}

@MainActor
final class AuthRouter: ObservableObject {
    @Published var path = NavigationPath()

    func push (_ destination: AuthDestination) {
        path.append(destination)
    }

    func pop () {
        guard !path.isEmpty else { return }
        path.removeLast()
    }

    func popToRoot() {
        path = NavigationPath()
    }

}

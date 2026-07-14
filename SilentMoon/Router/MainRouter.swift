//
//  MainRouter.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 06.07.26.
//

import Combine
import SwiftUI

enum MainDestination: Hashable {
    case course, music
}

@MainActor
final class MainRouter: ObservableObject {
    @Published var path = NavigationPath()

    func push (_ destination: MainDestination) {
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

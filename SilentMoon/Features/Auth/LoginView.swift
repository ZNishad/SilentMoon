//
//  ContentView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 02.07.26.
//

import SwiftUI

struct LoginView: View {

    @StateObject private var router = AuthRouter()

    var body: some View {
        NavigationStack(path: $router.path) {
            WelcomeView()
                .navigationDestination(for: AuthDestination.self) { destination in
                    switch destination {
                    case .signIn:
                        SighnInView()
                    case .signUp:
                        SignUpView()
                    case .home:
                        Home()
                    }
                }
        }
        .environmentObject(router)
    }
}

#Preview {
    LoginView()
}

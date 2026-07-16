//
//  ContentView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 02.07.26.
//

import SwiftUI

struct AuthRouterView: View {

    @StateObject private var authRouter = AuthRouter()

    var body: some View {
        NavigationStack(path: $authRouter.path) {
            WelcomeView()
                .navigationDestination(for: AuthDestination.self) { destination in
                    switch destination {
                    case .signIn:
                        SignInView()
                    case .signUp:
                        SignUpView()
                    case .privacyPolicy:
                        PrivacyPolicyView()
                    case .getStarted:
                        GetStartView()
                    case .chooseTopic:
                        ChooseTopicView()
                    case .reminders:
                        RemindersView()
                    }
                }
        }
        .environmentObject(authRouter)
    }
}

#Preview {
    AuthRouterView()
}

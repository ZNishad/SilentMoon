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
        .environmentObject(router)
    }
}

#Preview {
    LoginView()
}

//
//  PrivacyPolicy.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 08.07.26.
//

import SwiftUI

struct PrivacyPolicyView: View {
    var body: some View {
        ScrollView {
            Text(policyText)
                .font(.system(size: 15))
                .foregroundStyle(.primary)
                .padding(20)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.white)
                        .shadow(color: .black.opacity(0.08), radius: 10, x: 0, y: 4)
                )
                .padding(.horizontal, 20)
        }
        .background(Color.gray.opacity(0.08))
        .navigationTitle("Privacy Policy")
        .navigationBarTitleDisplayMode(.inline)
    }

    private var policyText: String {
        """
        SILENT MOON — PRIVACY POLICY (definitely real, don't worry about it)

        Last updated: whenever we remembered to write this

        1. WHAT WE COLLECT
        We collect your dreams, your 3am thoughts, and occasionally your snoring patterns (for "research purposes"). We also collect your email, mostly so we can remind you that you haven't meditated in 12 days.

        2. WHAT WE DON'T COLLECT
        Your actual inner peace. That one's on you.

        3. HOW WE USE YOUR DATA
        • To send you notifications at the worst possible moment
        • To recommend "Ocean Sounds" even though you clearly prefer "Rain on a Tin Roof"
        • To judge you silently when you skip Day 3 of your 7-day streak

        4. THIRD-PARTY SHARING
        We share your data with exactly nobody, because frankly we forgot to build that feature.

        5. COOKIES
        We don't use cookies. We use lo-fi beats and gentle narrator voices instead.

        6. YOUR RIGHTS
        You have the right to remain sleepy. Anything you doze off to may be used to improve our algorithm.

        7. CONTACT US
        Reach out any time — we're up anyway, we don't sleep, we make the app that helps you sleep. Ironic, we know.

        By continuing, you agree that meditation apps reading their own privacy policies out loud would probably put you to sleep faster than the app itself.
        """
    }
}

#Preview {
    NavigationStack {
        PrivacyPolicyView()
    }
}

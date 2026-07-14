//
//  MainTabView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 13.07.26.
//

import SwiftUI

struct MainTabView: View {
    @State private var selectedTab: MainTab = .home
    @StateObject private var mainRouter = MainRouter()

    var body: some View {
        navigation
    }
}

extension MainTabView {
    @ViewBuilder
    private var navigation: some View {
        NavigationStack(path: $mainRouter.path) {
            VStack(spacing: 0) {
                Group {
                    switch selectedTab {
                    case .home: HomeView()
                    case .sleep: SleepView()
                    case .meditate: MeditateView()
                    case .music: MusicView()
                    case .profile: ProfileView()
                    }
                }
                .frame(maxHeight: .infinity)

                CustomTabBar(selectedTab: $selectedTab)
            }
            .navigationDestination(for: MainDestination.self) { destination in
                switch destination {
                case .course:
                    CourseDetailView()
                case .music:
                    MusicPlayerView()
                }
            }
        }
        .environmentObject(mainRouter)
    }
}

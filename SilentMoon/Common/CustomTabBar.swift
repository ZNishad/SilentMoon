//
//  CustomTabBar.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 13.07.26.
//

import SwiftUI

enum MainTab: CaseIterable {

    case home, sleep, meditate, music, profile

    var title: String {
        switch self {
        case .home: "Home"
        case .sleep: "Sleep"
        case .meditate: "Meditate"
        case .music: "Music"
        case .profile: "Nishad"
        }
    }

    var icon: Image {
        switch self {
        case .home: Image(.houseIcon)
        case .sleep: Image(.moonIcon)
        case .meditate: Image(.meditateIcon)
        case .music: Image(.musicIcon)
        case .profile: Image(.profileIcon)
        }
    }
}

struct CustomTabBar: View {
    @Binding var selectedTab: MainTab

    var body: some View {
        geometry

    }

}

extension CustomTabBar {
    @ViewBuilder
    private var geometry: some View {
        GeometryReader { geometry in
            let tabWidth = geometry.size.width / CGFloat(MainTab.allCases.count)
            let selectedIndex = MainTab.allCases.firstIndex(of: selectedTab) ?? 0

            ZStack(alignment: .leading) {
                Rectangle()
                    .fill(.smPurple)
                    .frame(width: 44, height: 44)
                    .cornerRadius(18)
                    .offset(x: tabWidth * CGFloat(selectedIndex) + (tabWidth - 44) / 2, y: -10)
                    .animation(.spring(response: 0.35, dampingFraction: 0.75), value: selectedTab)

                HStack(spacing: 0) {
                    ForEach(MainTab.allCases, id: \.self) { tab in
                        tabItem(tab)
                            .frame(width: tabWidth)
                    }
                }
            }

        }
        .frame(height: 70)
        .padding(.vertical, 12)
    }

    @ViewBuilder
    private func tabItem(_ tab: MainTab) -> some View {
        VStack(spacing: 6) {
            tab.icon
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundStyle(selectedTab == tab ? .white : .gray)
                .padding(12)

            Text(tab.title)
                .font(.system(size: 14))
                .foregroundStyle(selectedTab == tab ? .smPurple : .gray)
        }
        .onTapGesture {
            selectedTab = tab
        }
    }
}

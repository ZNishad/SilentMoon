//
//  CategorySelector.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 17.07.26.
//

import SwiftUI

enum MainCategory: CaseIterable {

    case all, my, anxious, sleep, kids, adult, relax

    var title: String {
        switch self {
        case .all: "All"
        case .my: "My"
        case .anxious: "Anxious"
        case .sleep: "Sleep"
        case .kids: "Kids"
        case .adult: "Adult"
        case .relax: "Relax"
        }
    }

    var icon: Image {
        switch self {
        case .all: Asset.Image.allIcon
        case .my: Asset.Image.myIcon
        case .anxious: Asset.Image.anxiousIcon
        case .sleep: Asset.Image.sleppIcon
        case .kids: Asset.Image.kidsIcon
        case .adult: Asset.Image.adultIcon
        case .relax: Asset.Image.relaxIcon
        }
    }
}

struct CategorySelector: View {
    @Binding var selectedCategory: MainCategory

    var body: some View {
        ScrollView(.horizontal) {
            HStack(spacing: 20) {
                ForEach(MainCategory.allCases, id: \.self) { tab in
                    tabItem(tab)
                }
            }
            .padding(.horizontal, 20)
        }
        .scrollIndicators(.hidden)
    }
}

extension CategorySelector {
    @ViewBuilder
    private func tabItem(_ tab: MainCategory) -> some View {
        VStack(spacing: 6) {
            tab.icon
                .renderingMode(.template)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundStyle(.white)
                .padding(18)
                .background(
                    Rectangle()
                        .fill(selectedCategory == tab ? .smPurple : .gray.opacity(0.6))
                        .frame(width: 65, height: 65)
                        .cornerRadius(25)
                )

            Text(tab.title)
                .font(.system(size: 18))
                .foregroundStyle(selectedCategory == tab ? .black : .gray.opacity(0.6))
        }
        .animation(.spring(response: 0.35, dampingFraction: 0.75), value: selectedCategory)
        .onTapGesture {
            selectedCategory = tab
        }
    }
}

#Preview {
    CategorySelector(selectedCategory: .constant(MainCategory.all))
}


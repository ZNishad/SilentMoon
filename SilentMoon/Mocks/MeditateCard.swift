//
//  MeditateCard.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 17.07.26.
//

import SwiftUI

struct MeditateCard: Identifiable {
    let id = UUID()
    let title: String
    let backgroundColor: Color
    let height: CGFloat
}

extension MeditateCard {
    static let allTopics: [MeditateCard] = [
        MeditateCard(title: "7 Days of Calm", backgroundColor: .blue, height: 235),
        MeditateCard(title: "Anxiet Release", backgroundColor: .orange, height: 185),
        MeditateCard(title: "7 Days of Calm", backgroundColor: .yellow, height: 185),
        MeditateCard(title: "Anxiet Release", backgroundColor: .green, height: 235),
        MeditateCard(title: "7 Days of Calm", backgroundColor: .blue, height: 235),
        MeditateCard(title: "Anxiet Release", backgroundColor: .orange, height: 185),
        MeditateCard(title: "7 Days of Calm", backgroundColor: .yellow, height: 185),
        MeditateCard(title: "Anxiet Release", backgroundColor: .green, height: 235)
    ]
}

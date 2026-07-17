//
//  TopicCard.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 09.07.26.
//

import SwiftUI

struct TopicCard: Identifiable {
    let id = UUID()
    let title: String
    let imageName: String
    let backgroundColor: Color
    let height: CGFloat
}

extension TopicCard {
    static let allTopics: [TopicCard] = [
        TopicCard(title: "Reduce Stress", imageName: "reduceStress", backgroundColor: .indigo, height: 235),
        TopicCard(title: "Improve Performanee", imageName: "improvePerformance", backgroundColor: .orange, height: 185),
        TopicCard(title: "Increase Happiness", imageName: "increaseHappiness", backgroundColor: .orange.opacity(0.7), height: 185),
        TopicCard(title: "Reduce Anxiety", imageName: "reduceAnxiety", backgroundColor: .yellow.opacity(0.7), height: 235),
        TopicCard(title: "Personal Growth", imageName: "personalGrowth", backgroundColor: .green, height: 235),
        TopicCard(title: "Better Sleep", imageName: "betterSleep", backgroundColor: .black.opacity(0.8), height: 185),
        TopicCard(title: "Stay Focused", imageName: "stayFocused", backgroundColor: .indigo.opacity(0.8), height: 185),
        TopicCard(title: "Find Balance", imageName: "reduceStress", backgroundColor: .pink.opacity(0.8), height: 235)
    ]
}

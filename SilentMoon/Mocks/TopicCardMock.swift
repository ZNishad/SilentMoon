//
//  TopicCardMock.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 09.07.26.
//

import SwiftUI

extension TopicCard {
    static let allTopics: [TopicCard] = [
        TopicCard(title: "Reduce Stress", imageName: "reduceStress", backgroundColor: .indigo, height: 255),
        TopicCard(title: "Improve Performanee", imageName: "improvePerformance", backgroundColor: .orange, height: 175),
        TopicCard(title: "Increase Happiness", imageName: "increaseHappiness", backgroundColor: .orange.opacity(0.7), height: 175),
        TopicCard(title: "Reduce Anxiety", imageName: "reduceAnxiety", backgroundColor: .yellow.opacity(0.7), height: 255),
        TopicCard(title: "Personal Growth", imageName: "personalGrowth", backgroundColor: .green, height: 255),
        TopicCard(title: "Better Sleep", imageName: "betterSleep", backgroundColor: .black.opacity(0.8), height: 175),
        TopicCard(title: "Stay Focused", imageName: "stayFocused", backgroundColor: .indigo.opacity(0.8), height: 175),
        TopicCard(title: "Find Balance", imageName: "reduceStress", backgroundColor: .pink.opacity(0.8), height: 255)
    ]
}

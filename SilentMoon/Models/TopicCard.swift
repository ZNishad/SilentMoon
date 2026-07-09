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

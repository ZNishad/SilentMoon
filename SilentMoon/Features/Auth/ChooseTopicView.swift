//
//  ChooseTopicView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 08.07.26.
//

import SwiftUI

struct ChooseTopicView: View {

    @EnvironmentObject var authRouter: AuthRouter

    private let topics: [TopicCard] = TopicCard.allTopics

    private var leftColumn: [TopicCard] {
        topics.enumerated().filter { $0.offset % 2 == 0 }.map(\.element)
    }

    private var rightColumn: [TopicCard] {
        topics.enumerated().filter { $0.offset % 2 == 1 }.map(\.element)
    }

    var body: some View {
        ScrollView {
            VStack {
                header
                mainSection
            }
        }
        .toolbar(.hidden, for: .navigationBar)
        .padding(.horizontal, 20)
        .padding(.top, 20)
        .scrollIndicators(.hidden)
    }
}

extension ChooseTopicView {
    @ViewBuilder
    private var header: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10) {
                Text("What Brings you")
                    .font(.system(size: 28).bold())
                    .multilineTextAlignment(.leading)

                Text("to Silent Moon?")
                    .font(.system(size: 28, weight: .light))
                    .multilineTextAlignment(.leading)

                Text("choose a topic to focus on:")
                    .font(.system(size: 20))
                    .foregroundStyle(.gray.opacity(0.7))
            }
            Spacer()
        }
    }

    @ViewBuilder
    private var mainSection: some View {
        HStack(alignment: .top, spacing: 16) {
            VStack(spacing: 16) {
                ForEach(leftColumn) { topic in
                    topicCard(topic)
                }
            }

            VStack(spacing: 16) {
                ForEach(rightColumn) { topic in
                    topicCard(topic)
                }
            }
        }
        .padding(.top, 24)
    }

    @ViewBuilder
    private func topicCard(_ topic: TopicCard) -> some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .fill(topic.backgroundColor)

            VStack {
                Image(topic.imageName)
                    .resizable()
                    .scaledToFit()

                Spacer()

                Text(topic.title)
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(.white)
                    .padding(16)
                    .multilineTextAlignment(.leading)
            }
            .padding(10)
        }
        .frame(height: topic.height)
        .onTapGesture {
            authRouter.push(.reminders)
        }
    }
}

#Preview {
    ChooseTopicView()
}

//
//  Meditate.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 06.07.26.
//

import SwiftUI

struct MeditateView: View {
    var body: some View {
        VStack {
            header
            mainSection
        }
    }

    @State var selectedCategory = MainCategory.all

    private var headerText: String {
        "We can learn how to recognize when our minds are doing their normal everyday acrobatics."
    }

    private var categoryTitle: [String] = [
        "All", "My", "Anxious", "Slepp", "Kids", "Relax"
    ]

    private let topics: [MeditateCard] = MeditateCard.allTopics

    private var leftColumn: [MeditateCard] {
        topics.enumerated().filter { $0.offset % 2 == 0 }.map(\.element)
    }

    private var rightColumn: [MeditateCard] {
        topics.enumerated().filter { $0.offset % 2 == 1 }.map(\.element)
    }
}

extension MeditateView {
    @ViewBuilder
    private var header: some View {
        VStack(alignment: .center, spacing: 15) {
            Text("Meditate")
                .font(.system(size: 28, weight: .semibold))
                .foregroundStyle(.black)
                .multilineTextAlignment(.center)

            Text(headerText)
                .font(.system(size: 16, weight: .light))
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)

        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var mainSection: some View {
        VStack {
            CategorySelector(selectedCategory: $selectedCategory)

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    dailyCalmTab

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
                    .padding(.horizontal, 20)
                }
            }

        }
        .padding(.top, 20)
    }

    @ViewBuilder
    private func topicCard(_ topic: MeditateCard) -> some View {
        ZStack(alignment: .top) {
            RoundedRectangle(cornerRadius: 20)
                .fill(topic.backgroundColor)

            VStack {
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
    }

    @ViewBuilder
    private var dailyCalmTab: some View {
        ZStack(alignment: .bottomLeading) {
            Asset.Image.dailyCalmBack
                .resizable()
                .scaledToFill()

            HStack {
                VStack(alignment: .leading) {
                    Text("Daily Calm")
                        .font(.system(size: 19, weight: .semibold))
                        .foregroundStyle(.black)

                    Text("Apr 30  Pause Practice")
                        .font(.system(size: 14, weight: .regular))
                        .foregroundStyle(.smoothBlack)
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "play.fill")
                        .font(.system(size: 20))
                        .foregroundStyle(.white)
                        .frame(width: 56, height: 56)
                        .background(Circle().fill(.smoothBlack))
                }
            }
            .padding(20)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .padding(.horizontal, 20)
    }
}

#Preview {
    MeditateView()
}

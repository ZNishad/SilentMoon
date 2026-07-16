//
//  CourseView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 13.07.26.
//

import SwiftUI

struct CourseDetailView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            header
            mainSection
            narrator

            switch selectedSegment {
            case 0: maleVoices
            case 1: femaleVoices
            default:
                EmptyView()
            }
        }
        .ignoresSafeArea()

    }

    private let segmentLabel: [String] = ["Male Voice", "Female Voice"]

    @State var selectedSegment: Int = 0

    @Namespace var segmentAnimation
}

extension CourseDetailView {
    @ViewBuilder
    private var header: some View {
        VStack {
            Asset.Image.coursePoster
                .scaledToFit()
        }

    }

    @ViewBuilder
    private var mainSection: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Happy Morning")
                .font(.system(size: 34, weight: .semibold))

            Text("Course")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.gray)

            Text("Ease the mind into a restful night’s sleep  with these deep, amblent tones.")
                .font(.system(size: 16, weight: .regular))
                .foregroundStyle(.gray)

            HStack(alignment: .top) {
                DetailStatsCard(
                    image: Asset.Image.heartIcon,
                    title: "24.234 Favorits")

                Spacer()

                DetailStatsCard(
                    image: Asset.Image.headphoneIcon,
                    title: "34.234 Listenning")
            }
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var narrator: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Pick a Narrator")
                .font(.system(size: 20, weight: .semibold))
                .foregroundStyle(.black)

            HStack(alignment: .top) {
                ForEach(segmentLabel.indices, id: \.self) { index in
                    let segment = segmentLabel[index]
                    VStack(alignment: .center, spacing: 5) {
                        Text(segment)
                            .font(.system(size: 18, weight: .regular))
                            .foregroundStyle(selectedSegment == index ? .smPurple : .gray)
                            .lineLimit(1)
                            .onTapGesture { selectedSegment = index }

                        if selectedSegment == index {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundStyle(.smPurple)
                                .matchedGeometryEffect(id: "indicator", in: segmentAnimation)
                        } else {
                            Rectangle()
                                .frame(height: 2)
                                .foregroundStyle(.clear)
                        }
                    }
                    .frame(maxWidth: .infinity)
                }
            }
            .animation(.spring(duration: 0.3), value: selectedSegment)
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var maleVoices: some View {
        ScrollView {
            VoicesCard(title: "Focus Attention", duration: "10 min")

            VoicesCard(title: "Body Scan", duration: "5 Min")

            VoicesCard(title: "Making Happiness", duration: "3 min")

            VoicesCard(title: "Rexlaxation", duration: "10 min")

            VoicesCard(title: "Calm Dreaming", duration: "15 min")

            VoicesCard(title: "Focus Attention", duration: "10 min")

            VoicesCard(title: "Body Scan", duration: "5 Min")

            VoicesCard(title: "Making Happiness", duration: "3 min")

            VoicesCard(title: "Rexlaxation", duration: "10 min")

            VoicesCard(title: "Calm Dreaming", duration: "15 min")

            VoicesCard(title: "Focus Attention", duration: "10 min")

            VoicesCard(title: "Body Scan", duration: "5 Min")

            VoicesCard(title: "Making Happiness", duration: "3 min")

            VoicesCard(title: "Rexlaxation", duration: "10 min")

            VoicesCard(title: "Calm Dreaming", duration: "15 min")
        }
        .padding(.horizontal, 20)
        .scrollIndicators(.hidden)
    }

    @ViewBuilder
    private var femaleVoices: some View {
        ScrollView() {
            VoicesCard(title: "Focus Attention Female", duration: "10 min")

            VoicesCard(title: "Body Scan Female", duration: "5 Min")

            VoicesCard(title: "Making Happiness Female", duration: "3 min")

            VoicesCard(title: "Rexlaxation Female", duration: "10 min")

            VoicesCard(title: "Calm Dreaming Female", duration: "15 min")

            VoicesCard(title: "Focus Attention Female", duration: "10 min")

            VoicesCard(title: "Body Scan Female", duration: "5 Min")

            VoicesCard(title: "Making Happiness Female", duration: "3 min")

            VoicesCard(title: "Rexlaxation Female", duration: "10 min")

            VoicesCard(title: "Calm Dreaming Female", duration: "15 min")

            VoicesCard(title: "Focus Attention Female", duration: "10 min")

            VoicesCard(title: "Body Scan Female", duration: "5 Min")

            VoicesCard(title: "Making Happiness Female", duration: "3 min")

            VoicesCard(title: "Rexlaxation Female", duration: "10 min")

            VoicesCard(title: "Calm Dreaming Female", duration: "15 min")
        }
        .padding(.horizontal, 20)
        .scrollIndicators(.hidden)
    }
}



#Preview {
    CourseDetailView()
}

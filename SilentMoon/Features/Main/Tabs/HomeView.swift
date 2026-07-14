//
//  Home.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 06.07.26.
//

import SwiftUI

struct HomeView: View {

    @EnvironmentObject var mainRouter: MainRouter

    var body: some View {
        ScrollView {
            header
            mainSection
            recomended
        }
        .scrollIndicators(.hidden)
        .padding(.horizontal, 20)
    }
}

extension HomeView {

    @ViewBuilder
    private var header: some View {
        VStack( spacing: 40) {
            Asset.Image.welcomeHeaderLogoLight

            HStack {
                VStack(alignment: .leading) {
                    Text("Good Morning, Nishad")
                        .font(.system(size: 28).bold())
                        .foregroundStyle(.black)
                        .multilineTextAlignment(.leading)

                    Text("We Wish you have a good day")
                        .font(.system(size: 22, weight: .light))
                        .foregroundStyle(.gray)
                        .multilineTextAlignment(.leading)
                }

                Spacer()
            }
        }
    }

    @ViewBuilder
    private var mainSection: some View {
        VStack(alignment: .leading, spacing: 20) {

            HStack(alignment: .top, spacing: 20) {
                TopCardView(
                    title: "Basics",
                    subtitle: "Course",
                    duration: "3-10 min",
                    backgroundColor: .smPurple,
                    image: Asset.Image.basicCourse,
                    imageSize: CGSize(width: 100, height: 100)) {
                        mainRouter.push(.course)
                    }

                TopCardView(
                    title: "Relaxation",
                    subtitle: "Music",
                    duration: "3-10 min",
                    backgroundColor: .relaxBack,
                    image: Asset.Image.relaxation,
                    imageSize: CGSize(width: 150, height: 150)) {
                        // course detail
                    }
            }

            ZStack(alignment: .bottomLeading) {
                Asset.Image.dailyBack
                    .resizable()
                    .scaledToFill()

                HStack {
                    VStack(alignment: .leading) {
                        Text("Daily Thought")
                            .font(.system(size: 19, weight: .semibold))
                            .foregroundStyle(.white)

                        Text("Meditation 3-10 min")
                            .font(.system(size: 14, weight: .regular))
                            .foregroundStyle(.white)
                    }

                    Spacer()

                    Button {

                    } label: {
                        Image(systemName: "play.fill")
                            .font(.system(size: 20))
                            .foregroundStyle(.black)
                            .frame(width: 56, height: 56)
                            .background(Circle().fill(.white))
                    }
                }
                .padding(20)
            }
            .clipShape(RoundedRectangle(cornerRadius: 10))
        }
    }

    @ViewBuilder
    private var recomended: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Recomended for you")
                .font(.system(size: 26, weight: .bold))
                .foregroundStyle(.black)
                .multilineTextAlignment(.leading)

            ScrollView(.horizontal) {
                HStack(alignment: .top, spacing: 20) {
                    HScrollCard(
                        image: Asset.Image.focusCard,
                        title: "Focus",
                        duration: "Meditation 3-10 min") {

                        }

                    HScrollCard(
                        image: Asset.Image.happinessCard,
                        title: "Happiness",
                        duration: "Meditation 3-10 min") {

                        }

                    HScrollCard(
                        image: Asset.Image.focusCard,
                        title: "Focus",
                        duration: "Meditation 3-10 min") {

                        }
                }
            }
        }
    }
}

#Preview {
    HomeView()
}

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
        }

    }
}

extension CourseDetailView {
    @ViewBuilder
    private var header: some View {
        Asset.Image.coursePoster
            .resizable()
            .scaledToFit()
            .ignoresSafeArea()
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
        ScrollView {
            
        }
    }
}



#Preview {
    CourseDetailView()
}

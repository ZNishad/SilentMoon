//
//  DetailStatsCard.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 14.07.26.
//

import SwiftUI

struct DetailStatsCard: View {

    let image: Image
    let title: String

    var body: some View {
        HStack(alignment: .top, spacing: 10) {
            image
                .resizable()
                .scaledToFit()
                .frame(width: 16, height: 16)

            Text(title)
                .font(.system(size: 14))
                .foregroundStyle(.gray)
        }
    }
}

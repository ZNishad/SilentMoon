//
//  HScrollCard.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 14.07.26.
//

import SwiftUI

struct HScrollCard: View {

    let image: Image
    let title: String
    let duration: String
    let action: () -> Void


    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            image
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .clipped()
                .frame(width: 150, height: 100)

            VStack(alignment: .leading, spacing: 6) {
                Text(title)
                    .font(.system(size: 19, weight: .semibold))
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.leading)

                Text(duration)
                    .font(.system(size: 13, weight: .regular))
                    .foregroundStyle(.gray.opacity(0.8))
                    .multilineTextAlignment(.leading)
            }
        }
        .onTapGesture(perform: action)
    }
}

//
//  TopCardView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 14.07.26.
//

import SwiftUI

struct TopCardView: View {

    let title: String
    let subtitle: String
    let duration: String
    let backgroundColor: Color
    let image: Image
    let imageSize: CGSize
    let action: () -> Void

    var body: some View {
        ZStack(alignment: .topLeading) {
            RoundedRectangle(cornerRadius: 10)
                .fill(backgroundColor)

            image
                .resizable()
                .scaledToFit()
                .frame(width: imageSize.width, height: imageSize.height)
                .frame(maxWidth: .infinity, alignment: .trailing)

            VStack(alignment: .leading, spacing: 4) {
                Spacer()

                Text(title)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundStyle(.white)

                Text(subtitle)
                    .font(.system(size: 13, weight: .semibold))
                    .foregroundStyle(.white.opacity(0.8))

                Spacer()
                    .frame(height: 20)

                HStack {
                    Text(duration)
                        .font(.system(size: 13, weight: .semibold))
                        .foregroundStyle(.white.opacity(0.8))

                    Spacer()

                    Button(action: action) {
                        Text("Start")
                            .textCase(.uppercase)
                            .font(.system(size: 13, weight: .semibold))
                            .foregroundStyle(.black)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 7)
                            .background(Color.white.opacity(0.9))
                            .clipShape(Capsule())
                    }
                }
            }
            .padding(16)
        }
        .frame(height: 220)
    }
}

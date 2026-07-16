//
//  Voices.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 16.07.26.
//

import SwiftUI

struct VoicesCard: View {

    let title: String
    let duration: String


    var body: some View {
        VStack(spacing: 19) {
            HStack(alignment: .top, spacing: 10) {
                Button {

                } label: {
                    Image(systemName: "play.fill")
                        .font(.system(size: 20))
                        .foregroundStyle(.black)
                        .frame(width: 56, height: 56)
                        .background(Circle().stroke(Color.gray.opacity(0.7), lineWidth: 0.5))

                }

                VStack(alignment: .leading, spacing: 6) {
                    Text(title)
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.black)

                    Text(duration)
                        .font(.system(size: 11, weight: .light))
                        .foregroundStyle(.gray)
                }

                Spacer()
            }

            Rectangle()
                .frame(maxWidth: .infinity, minHeight: 1, maxHeight: 1)
                .foregroundStyle(.gray.opacity(0.3))
        }
        .padding(.top, 20)

    }
}


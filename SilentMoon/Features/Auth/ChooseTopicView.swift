//
//  ChooseTopicView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 08.07.26.
//

import SwiftUI

struct ChooseTopicView: View {
    var body: some View {
        VStack {
            header
            Spacer()
        }
        .toolbar(.hidden, for: .navigationBar)
        .padding(20)

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
        
    }
}

#Preview {
    ChooseTopicView()
}

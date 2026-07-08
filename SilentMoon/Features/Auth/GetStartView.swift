//
//  GetStartView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 08.07.26.
//

import SwiftUI

struct GetStartView: View {

    @EnvironmentObject var router: AuthRouter

    private var getStartedTitle: String {
        "get started".capitalized
    }
    var body: some View {
        VStack {
            header
            mainSection
        }
        .background(Color.smPurple)
        .toolbar(.hidden, for: .navigationBar)
    }
}

extension GetStartView {
    @ViewBuilder
    private var header: some View {
        VStack(spacing: 20) {
            Asset.Image.silenMoonLogoPurple

            VStack {
                Text("Hi Nishad, Welcome")
                    .font(.system(size: 30).bold())
                    .foregroundStyle(Asset.Color.smMilk)

                Text("to Silent Moon")
                    .font(.system(size: 30).bold())
                    .foregroundStyle(.smWhite)
            }
            .padding(.vertical, 40)

            Text("Explore the app, Find some peace of mind to prepare for meditation")
                .font(.system(size: 16))
                .foregroundStyle(.smWhite)
                .multilineTextAlignment(.center)
                .frame(height: 50)
        }

        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var mainSection: some View {
        ZStack(alignment: .bottom) {
            Asset.Image.meditationImage
                .resizable()

            Asset.Image.meditateBackground
                .offset(y: 67)

            SMButtons(title: getStartedTitle, style: .light) {
                router.push(.chooseTopic)
            }
            .padding(.horizontal, 20)
            .padding(.bottom, 40)
        }




    }
}

#Preview {
    GetStartView()
}

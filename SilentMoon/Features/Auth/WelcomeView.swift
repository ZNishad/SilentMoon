//
//  WelcomeView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 05.07.26.
//

import SwiftUI

struct WelcomeView: View {
    @EnvironmentObject var router: AuthRouter

    var body: some View {
        VStack {
            header
            middleText
            buttonSection
        }
    }
        
}

extension WelcomeView {
    @ViewBuilder
    private var header: some View {
        VStack {
            ZStack(alignment: .top) {
                Asset.Image.welcomeHeaderBackground
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                VStack(spacing: 8) {
                    Asset.Image.welcomeHeaderLogoLight
                    Asset.Image.welcomeHeaderImage
                }
                .padding(.top, 40)

                Spacer()
            }

        }
    }

    @ViewBuilder
    private var middleText: some View {
        VStack(spacing: 15) {
            Text("We are what we do")
                .font(.system(size: 30).bold())
            Text ("Thousand of people are using silent moon for smalls meditation")
                .font(.system(size: 16))
                .foregroundStyle(.gray)
                .multilineTextAlignment(.center)
        }
    }

    @ViewBuilder
    private var buttonSection: some View {
        VStack(spacing: 24) {
            SMButtons(title: Asset.String.signUpButton, style: .purple) {
                router.push(.signUp)
            }

            HStack(spacing: 4) {
                Text("Already have an account?".capitalized)
                    .font(.system(size: 14))
                    .foregroundColor(.gray)


                Text("sign in".capitalized)
                    .font(.system(size: 14))
                    .foregroundColor(Asset.Color.smPurple)
                    .onTapGesture {
                        router.push(.signIn)
                    }
            }
        }
        .padding(24)
    }
}

#Preview {
    WelcomeView()
}

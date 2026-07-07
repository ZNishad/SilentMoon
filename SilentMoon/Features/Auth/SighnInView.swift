//
//  File.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 05.07.26.
//

import SwiftUI

struct SighnInView: View {

    @State private var showAlert: Bool = false

    @State private var emailText: String = ""

    @State private var passwordText: String = ""

    @State private var isSecure: Bool = true

    var body: some View {
        VStack(spacing: 20) {
            headerButton
            middleFilder
        }
        .alert("Service not avilable", isPresented: $showAlert) {
            Button("OK", role: .cancel) {

            }
        }
    }
}

extension SighnInView {

    @ViewBuilder
    private var headerButton: some View {
        ZStack(alignment: .top) {
            Asset.Image.fingerBackground
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Welcome Back!")
                    .font(.system(size: 28).bold())
                    .foregroundStyle(.black)
                    .multilineTextAlignment(.center)

                SMButtons(title: "continue with facebook".capitalized, style: .facebook) {
                    showAlert = true
                }
                .overlay(alignment: .leading) {
                    Image(.fbLogo)
                        .foregroundStyle(.gray)
                        .padding(.leading, 40)
                }

                SMButtons(title: "continue with google".capitalized, style: .google) {
                    showAlert = true
                }
                .overlay(alignment: .leading) {
                    Image(.googleLogo)
                        .foregroundStyle(.gray)
                        .padding(.leading, 40)
                }
            }
            .padding(.top, 40)
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var middleFilder: some View {
        VStack(spacing: 20) {
            Text("or log in with email")
                .textCase(.uppercase)
                .font(.system(size: 14))
                .foregroundStyle(.gray)

            SMTextField(placeholder: "email adress".capitalized, text: $emailText)

            if isSecure {
                SMSecureField(placeholder: "password".capitalized, password: $passwordText)
                    .overlay(alignment: .trailing) {
                        Image(.closedEye)
                            .padding(.trailing, 20)
                            .onTapGesture {
                                isSecure.toggle()
                            }
                    }
            } else {
                SMTextField(placeholder: "password".capitalized, text: $passwordText)
                    .overlay(alignment: .trailing) {
                        Image(systemName: "eye.slash")
                            .padding(.trailing, 20)
                            .onTapGesture {
                                isSecure.toggle()
                            }
                    }

            }
        }
        .padding(.horizontal, 20)

    }
}

#Preview {
    SighnInView()
}

//
//  File.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 05.07.26.
//

import SwiftUI

struct SignInView: View {

    @State private var showAlert: Bool = false

    @State private var emailText: String = ""

    @State private var passwordText: String = ""

    @State private var isSecure: Bool = true

    @EnvironmentObject var router: AuthRouter

    @EnvironmentObject var manager: RouterManager

    var body: some View {
        VStack(spacing: 20) {
            headerButton
            middleFilder
            footer
            Spacer()
        }
        .contentShape(Rectangle())
            .onTapGesture {
                hideKeyboard()
            }
        .alert("Service not avilable", isPresented: $showAlert) {
            Button("OK", role: .cancel) {

            }
        }
        .navigationBarBackButtonHidden(true)
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button {
                    router.popToRoot()
                } label: {
                    Image(systemName: "chevron.left")
                        .foregroundStyle(.black)
                }

            }
        }
    }
}

extension SignInView {

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
                        .padding(.leading, 33)
                }
            }
            .padding(.top, 40)
            .padding(.bottom, 24)
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var middleFilder: some View {
        VStack(spacing: 20) {
            Text("or log in with email".capitalized)
                .font(.system(size: 14))
                .foregroundStyle(.gray)
                .padding(.bottom, 24)

            SMTextField(placeholder: "email adress".capitalized, text: $emailText)

            ZStack {
                SMSecureField(placeholder: "password".capitalized, password: $passwordText)
                    .opacity(isSecure ? 1 : 0)

                SMTextField(placeholder: "password".capitalized, text: $passwordText)
                    .opacity(isSecure ? 0 : 1)
            }
            .overlay(alignment: .trailing) {
                Button {
                    isSecure.toggle()
                } label: {
                    Image(systemName: isSecure ? "eye.slash" : "eye.fill")
                        .padding(.trailing, 20)
                }
                .foregroundStyle(.gray)
            }

            SMButtons(title: "log in".capitalized, style: .purple) {
                manager.login()
            }

            Text("Forgot Password?")
                .font(.system(size: 14))
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var footer: some View {
        HStack(spacing: 4) {
            Text("Don't have an account?")
                .foregroundColor(.gray)

            Text("Sign Up")
                .foregroundColor(Asset.Color.smPurple)
                .onTapGesture {
                    router.push(.signUp)
                }
        }
        .padding(.top, 76)
    }
}

#Preview {
    SignInView()
}

//
//  SignUpView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 05.07.26.
//

import SwiftUI

struct SignUpView: View {

    @State private var showAlert: Bool = false

    @State private var emailText: String = ""

    @State private var passwordText: String = ""

    @State private var isSecure: Bool = true

    @State private var isProvicyAccepted: Bool = false

    @EnvironmentObject var router: AuthRouter

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

extension SignUpView {

    @ViewBuilder
    private var headerButton: some View {
        ZStack(alignment: .top) {
            Asset.Image.fingerBackground
                .resizable()
                .scaledToFit()
                .ignoresSafeArea()

            VStack(spacing: 20) {
                Text("Create your account!")
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
        }
        .padding(.horizontal, 20)
    }

    @ViewBuilder
    private var middleFilder: some View {
        VStack(spacing: 20) {
            Text("or log in with email".capitalized)
                .font(.system(size: 14))
                .foregroundStyle(.gray)

            SMTextField(placeholder: "name".capitalized, text: $emailText)

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

            SMButtons(title: "sign up".capitalized, style: !isProvicyAccepted ? .disabledPurple : .purple) {
                router.push(.getStarted)
            }
            .disabled(!isProvicyAccepted)
            .scaleEffect(isProvicyAccepted ? 1 : 0.98)
            .animation(.spring(response: 0.3, dampingFraction: 0.6), value: isProvicyAccepted)

            HStack() {
                HStack() {
                    Text("I have read the")
                        .font(.system(size: 14))
                        .font(.system(size: 14))

                    Text("Privacy Policy")
                        .foregroundColor(Asset.Color.smPurple)
                        .font(.system(size: 14))
                        .onTapGesture {
                            router.push(.privacyPolicy)
                        }
                }

                Spacer()

                Button {
                    isProvicyAccepted.toggle()
                } label: {
                    Image(systemName: isProvicyAccepted ? "checkmark.square" : "square")
                }
                .foregroundStyle(.gray)

            }
            .padding(.horizontal, 20)
        }
        .padding(.horizontal, 20)

        Spacer()
    }

    @ViewBuilder
    private var footer: some View {
        HStack(spacing: 4) {
            Text("Already have an account?".capitalized)
                .font(.system(size: 14))
                .foregroundColor(.gray)

            Text("Sign In".capitalized)
                .foregroundColor(Asset.Color.smPurple)
                .onTapGesture {
                    router.push(.signIn)
                }
        }
    }
}

extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

#Preview {
    SignUpView()
}

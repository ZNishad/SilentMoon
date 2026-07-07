//
//  Components.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 06.07.26.
//

import SwiftUI

enum SMButtonStyle {
    case purple
    case light
    case facebook
    case google

    var backgroundColor: Color {
        switch self {
        case .purple:
            return Asset.Color.smPurple
        case .light:
            return Asset.Color.smWhite
        case .facebook:
            return Asset.Color.fbBLue
        case .google:
            return Asset.Color.smWhite
        }
    }

    var foregroundColor: Color {
        switch self {
        case .purple:
            return .smWhite
        case .light:
            return .smPurple
        case .facebook:
            return .smWhite
        case .google:
            return .black
        }
    }
}

struct SMButtons: View {
    let title: String
    let style: SMButtonStyle
    let action: () -> Void

    var body: some View {
        Button(action: action) {
            Text(title)
                .font(.system(size: 14))
                .foregroundStyle(style.foregroundColor)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 25)
                .background(style.backgroundColor)
                .cornerRadius(38)
        }
    }

}

struct SMSecureField: View {

    let placeholder: String

    @Binding var password: String

    var body: some View {
        SecureField("", text: $password, prompt: Text(placeholder.capitalized).foregroundStyle(.gray))
            .frame(height: 24)
            .padding(20)
            .clipped()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(16)

    }
}

struct SMTextField: View {

    let placeholder: String

    @Binding var text: String

    var body: some View {
        TextField("", text: $text, prompt: Text(placeholder.capitalized).foregroundStyle(.gray))
            .frame(height: 24)
            .padding(20)
            .clipped()
            .background(Color.gray.opacity(0.2))
            .cornerRadius(16)

    }
}


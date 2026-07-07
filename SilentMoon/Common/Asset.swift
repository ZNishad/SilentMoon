//
//  Asset.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 06.07.26.
//

import SwiftUI

enum Asset {
    enum Image {
        static let welcomeHeaderLogoLoght = SwiftUI.Image(.silentMoonLogoLight)
        static let welcomeHeaderBackground = SwiftUI.Image(.welcomeHeaderBackground)
        static let welcomeHeaderImage = SwiftUI.Image(.welcomeHeader)
        static let fingerBackground = SwiftUI.Image(.fingerBackground)

    }

    enum Color {
        static let smPurple = SwiftUI.Color.smPurple
        static let smWhite = SwiftUI.Color.smWhite
        static let fbBLue = SwiftUI.Color.fbBlue
    }

    enum String {
        static let signUpButton = "Sign Up"
        static let signInButton = "Sign In"
    }
}

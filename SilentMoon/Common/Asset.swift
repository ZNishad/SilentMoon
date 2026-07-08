//
//  Asset.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 06.07.26.
//

import SwiftUI

struct Asset {
    private init() {}

    struct Image {
        private init() {}

        static let welcomeHeaderLogoLight = SwiftUI.Image(.silentMoonLogoLight)
        static let welcomeHeaderBackground = SwiftUI.Image(.welcomeHeaderBackground)
        static let welcomeHeaderImage = SwiftUI.Image(.welcomeHeader)
        static let fingerBackground = SwiftUI.Image(.fingerBackground)
        static let silenMoonLogoPurple = SwiftUI.Image(.silenMoonLogoPurple)
        static let meditationImage = SwiftUI.Image(.meditate)
        static let meditateBackground = SwiftUI.Image(.meditateBackground)
    }

    struct Color {
        private init() {}

        static let smPurple = SwiftUI.Color.smPurple
        static let smWhite = SwiftUI.Color.smWhite
        static let fbBLue = SwiftUI.Color.fbBlue
        static let smMilk = SwiftUI.Color.milk
    }

    struct String {
        private init() {}

        static let signUpButton = "Sign Up"
        static let signInButton = "Sign In"
    }
}

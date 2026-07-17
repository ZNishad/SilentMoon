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
        static let basicCourse = SwiftUI.Image(.basicCourse)
        static let relaxation = SwiftUI.Image(.relaxation)
        static let dailyBack = SwiftUI.Image(.dailyBackground)
        static let focusCard = SwiftUI.Image(.foucsCard)
        static let happinessCard = SwiftUI.Image(.happinesCard)
        static let coursePoster = SwiftUI.Image(.courseDetailPoster)
        static let heartIcon = SwiftUI.Image(.heartIcon)
        static let headphoneIcon = SwiftUI.Image(.headphoneIcon)
        static let allIcon = SwiftUI.Image(.allIcon)
        static let myIcon = SwiftUI.Image(.myIcon)
        static let anxiousIcon = SwiftUI.Image(.anxiousIcon)
        static let sleppIcon = SwiftUI.Image(.sleepIcon)
        static let kidsIcon = SwiftUI.Image(.kidsIcon)
        static let adultIcon = SwiftUI.Image(systemName: "person")
        static let relaxIcon = SwiftUI.Image(systemName: "figure.mind.and.body")
        static let dailyCalmBack = SwiftUI.Image(.dailyCalmBackground)
    }

    struct Color {
        private init() {}

        static let smPurple = SwiftUI.Color.smPurple
        static let smWhite = SwiftUI.Color.smWhite
        static let fbBLue = SwiftUI.Color.fbBlue
        static let smMilk = SwiftUI.Color.milk
        static let relaxBack = SwiftUI.Color.relaxBack
    }

    struct String {
        private init() {}

        static let signUpButton = "Sign Up"
        static let signInButton = "Sign In"
    }
}

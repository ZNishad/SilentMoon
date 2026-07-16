//
//  ProfileView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 13.07.26.
//

import SwiftUI

struct ProfileView: View {

    @EnvironmentObject var routerManager: RouterManager
    var body: some View {
        Button {
            routerManager.logout()
        } label: {
            Text("Log out")
                .font(.system(size: 28, weight: .bold))
                .foregroundStyle(.white)
                .padding(.horizontal, 20)
                .padding(.vertical, 17)
                .background(Color.orange.opacity(0.9))
                .clipShape(Capsule())
        }
    }
}

#Preview {
    ProfileView()
}

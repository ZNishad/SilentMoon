//
//  RemindersView.swift
//  SilentMoon
//
//  Created by Nishad Zulfuqarli on 09.07.26.
//

import SwiftUI

struct RemindersView: View {

    @State private var selectedTime: Date = Date()

    @State private var selectedDays: Set<String> = []

    @EnvironmentObject var routerManager: RouterManager

    private let days = ["SU", "M", "T", "W", "TH", "F", "S"]

    var body: some View {
        VStack (){
            header
            mainSection
            footerButtons

        }
        .padding(.horizontal, 20)
        .toolbar(.hidden, for: .navigationBar)
    }
}

extension RemindersView {
    @ViewBuilder
    private var header: some View {
        VStack(alignment: .leading, spacing: 15) {
            Text("What time would you like to meditate?")
                .font(.system(size: 24).bold())
                .foregroundStyle(.black)
                .lineLimit(2)
                .multilineTextAlignment(.leading)

            Text("Any time you can choose but We recommend first thing in the morning.")
                .font(.system(size: 16, weight: .light))
                .foregroundStyle(.gray)
        }
    }

    @ViewBuilder
    private var mainSection: some View {
        VStack {
            DatePicker(
                "",
                selection: $selectedTime,
                displayedComponents: .hourAndMinute
            )
            .datePickerStyle(.wheel)
            .labelsHidden()
            .background(Color.gray.opacity(0.1))
            .cornerRadius(20)
            .environment(\.locale, Locale(identifier: "en_US"))
        }
        .padding(.vertical, 16)

        VStack(alignment: .leading, spacing: 15) {
            Text("Which day would you like to meditate?")
                .font(.system(size: 24).bold())
                .foregroundStyle(.black)
                .lineLimit(2)
                .multilineTextAlignment(.leading)

            Text("Every day is best, but we recommend picking at least five.")
                .font(.system(size: 16, weight: .light))
                .foregroundStyle(.gray)
        }
        .padding(.vertical, 16)

        HStack {
            ForEach(days, id: \.self) { day in
                dayCircle(day)
            }

        }
    }

    @ViewBuilder
    private func dayCircle(_ day: String) -> some View {
        Text(day)
            .font(.system(size: 12, weight: .semibold))
            .foregroundStyle(selectedDays.contains(day) ? .white : .gray)
            .frame(width: 44, height: 44)
            .background(
                Circle()
                    .fill(selectedDays.contains(day) ? Color.black.opacity(0.8) : Color.clear)
            )
            .overlay(
                Circle()
                    .stroke(Color.gray.opacity(0.4), lineWidth: selectedDays.contains(day) ? 0 : 1)
            )
            .animation(.easeInOut(duration: 0.1), value: selectedDays)
            .onTapGesture {
                if selectedDays.contains(day) {
                    selectedDays.remove(day)
                } else {
                    selectedDays.insert(day)
                }
            }
    }

    @ViewBuilder
    private var footerButtons: some View {
        VStack(spacing: 12) {
            SMButtons(title: "Save", style: .purple) {
                routerManager.login()
            }

            SMButtons(title: "No thanks", style: .clear) {
                routerManager.login()
            }
        }
        .padding(.vertical, 16)
    }
}

#Preview {
    RemindersView()
}

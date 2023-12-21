//
//  Challenge4View.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/19.
//

import SwiftUI

//enum Icons: String, CaseIterable {
//    case mic.fill
//    case message.fill
//    case bubble.fill
//    case phone.fill
//    case video.fill
//}

struct Challenge4View: View {
    @State private var selectedIcon: String = "mic.fill"
    @State private var selectedColor: Color? = .red

    var body: some View {
        let iconOptions = ["mic.fill", "message.fill", "bubble.fill", "phone.fill", "video.fill"]
        let colorOptions: [Color] = [.red, .blue, .yellow, .green, .orange, .purple]

        VStack(spacing: 48) {
            Picker("Icon", selection: $selectedIcon) {
                ForEach(iconOptions, id: \.self) { icon in
                    Image(systemName: icon).tag(icon)
                }
            }
            .pickerStyle(.segmented)
            HStack(spacing: 24) {
                ForEach(colorOptions, id: \.self) { color in
                    Button {
                        self.selectedColor = color
                    } label : {
                        Circle()
                            .fill(color)
                            .frame(width: 28, height: 28)
                    }
                }
            }
            if let selectedColor = selectedColor {
                Image(systemName: selectedIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 48)
                    .foregroundStyle(selectedColor)
            }
        }
    }
}

#Preview {
    Challenge4View()
}

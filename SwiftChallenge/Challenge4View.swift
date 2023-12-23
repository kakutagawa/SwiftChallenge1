//
//  Challenge4View.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/19.
//

import SwiftUI

enum Icons: String, CaseIterable, Identifiable {
    var id: String{ self.rawValue }
    case mic = "mic.fill"
    case message = "message.fill"
    case bubble = "bubble.fill"
    case phone = "phone.fill"
    case video = "video.fill"
}

struct Challenge4View: View {
    @State private var selectedIcon: String = "mic.fill"
    @State private var selectedColor: Color = .red
    let colorOptions: [Color] = [.red, .blue, .yellow, .green, .orange, .purple]

    var body: some View {
        VStack(spacing: 48) {
            Picker("Icon", selection: $selectedIcon) {
                ForEach(Icons.allCases, id: \.self) { icon in
                    Image(systemName: icon.rawValue).tag(icon)
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
            Image(systemName: selectedIcon)
                .resizable()
                .scaledToFit()
                .frame(width: 48)
                .foregroundStyle(selectedColor)
        }
    }
}

#Preview {
    Challenge4View()
}

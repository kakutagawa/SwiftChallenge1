//
//  Challenge2View.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/12.
//

import SwiftUI

final class Profile: ObservableObject {
    @Published var name: String
    @Published var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func happyBirthday() {
        age += 1
    }
}

struct Challenge2View: View {
    @StateObject private var profile = Profile(name: "芥川", age: 25)

    var body: some View {
        VStack(spacing: 20) {
            Text("名前: \(profile.name)")
            Text("年齢: \(profile.age)歳")
            Button(action: {
                profile.happyBirthday()
            }) {
                HStack {
                    Image(systemName: "birthday.cake.fill")
                    Text("誕生日")
                }
            }
        }
    }
}

#Preview {
    Challenge2View()
}

//
//  Challenge2View.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/12.
//

import SwiftUI

struct Challenge2View: View {
    @State private var myAge = profile.age

    var body: some View {
        VStack(spacing: 20) {
            Text("名前: \(profile.name)")
            Text("年齢: \(myAge)歳")
            Button {
                profile.happyBirthday()
            } label: {
                HStack {
                    Image(systemName: "birthday.cake.fill")
                    Text("誕生日")
                }
            }
        }
    }
}
final class Profile {
    let name = "芥川"
    var age = 25
    func happyBirthday() {
        age = age + 1
    }
}
private let profile = Profile()

#Preview {
    Challenge2View()
}

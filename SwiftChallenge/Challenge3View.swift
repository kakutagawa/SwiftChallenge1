//
//  Challenge3View.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/13.
//

import SwiftUI

struct Challenge3Profile: Identifiable {
    let id = UUID()
    let name: String
    let age: Int
}

struct Challenge3View: View {
    var users: [Challenge3Profile] = []

    init() {
        var userList = [Challenge3Profile]()
        for i in 1...100 {
            let user = Challenge3Profile(name: "ユーザー\(i)", age: i)
            userList.append(user)
        }
        self.users = userList
    }
    var body: some View {
        ScrollView {
            ForEach(users) { user in
                HStack {
                    Text("名前：\(user.name)")
                    Spacer()
                    Text("年齢：\(user.age)歳")
                }
                .frame(height: 60)
                .padding(.horizontal, 32)
            }
        }
    }
}

#Preview {
    Challenge3View()
}

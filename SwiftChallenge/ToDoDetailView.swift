//
//  ToDoDetailView.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/28.
//

import SwiftUI

struct ToDoDetailView: View {
    let todoDetail: Todo

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("ユーザーID: \(todoDetail.userId)")
                .font(.caption)
            Text("タイトル: \(todoDetail.title)")
                .font(.headline)

        }
        .padding(16)
        .navigationTitle(todoDetail.completed ? "完了タスク" : "非完了タスク")
    }
}


#Preview {
    ToDoDetailView(todoDetail: Todo(id: 1, userId: 1, title: "Hello", completed: false))
}

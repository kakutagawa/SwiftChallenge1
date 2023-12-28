//
//  ToDoDetailView.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/28.
//

import SwiftUI

struct ToDoDetailView: View {
    let todo: Todo

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Text("ユーザーID: \(todo.userId)")
                .font(.caption)
            Text("タイトル: \(todo.title)")
                .font(.headline)

        }
        .padding(16)
        .navigationTitle(todo.completed ? "完了タスク" : "非完了タスク")
    }
}

#Preview {
    ToDoDetailView()
}

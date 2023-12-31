//
//  Challenge5View.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/25.
//

import SwiftUI

struct Todo: Codable {
    let id: Int
    let userId: Int
    let title: String
    let completed: Bool
}

final class APIClient: ObservableObject {
    @Published var todos: [Todo] = []

    func request() async {
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/") else {
            return
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            let todoList = try JSONDecoder().decode([Todo].self, from: data)
            Task { @MainActor in
                self.todos = todoList
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct Challenge5View: View {
    @StateObject var apiClient = APIClient()
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(apiClient.todos, id: \.id) { todoList in
                    HStack(spacing: 24) {
                        VStack(spacing: 8) {
                            Text("ユーザーID: \(todoList.userId)")
                                .font(.caption)
                            if todoList.completed  {
                                Image(systemName: "checkmark.circle.fill")
                                    .resizable()
                                    .frame(width: 16, height: 16)
                                    .foregroundStyle(.green)
                            }
                        }
                        Text("\(todoList.title)")
                            .font(.callout)
                    }
                    .frame(height: 80)
                    Divider()
                }
                .padding(.horizontal, 16)
            }
        }
        .onAppear {
            Task {
                await apiClient.request()
            }
        }
    }
}

#Preview {
    Challenge5View()
}


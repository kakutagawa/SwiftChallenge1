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
    let users: [Challenge3Profile]


    var body: some View {
        ScrollView {
            
        }
    }
}

#Preview {
    Challenge3View()
}

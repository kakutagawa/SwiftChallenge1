//
//  ContentView.swift
//  SwiftChallenge1
//
//  Created by 芥川浩平 on 2023/12/10.
//

import SwiftUI

struct ContentView: View {
    @State private var sunColor: Color = .black
    @State private var cloudColor: Color = .black
    @State private var rainColor: Color = .black
    @State private var sunText = false
    @State private var cloudText = false
    @State private var rainText = false

    var body: some View {
        VStack {
            HStack {
                Button {
                    sunColor = .orange
                    sunText = true
                } label: {
                    VStack {
                        Image(systemName: "sun.min.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundColor(sunColor)
                        if sunText {
                            Text("晴れ")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                }
                .padding(.trailing, 40)
                Button {
                    cloudColor = .gray
                    cloudText = true
                } label: {
                    VStack {
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundColor(cloudColor)
                        if cloudText {
                            Text("曇り")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                }
                Button {
                    rainColor = .blue
                    rainText = true
                } label: {
                    VStack {
                        Image(systemName: "cloud.heavyrain.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundColor(rainColor)
                        if rainText {
                            Text("雨")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                }
                .padding(.leading, 40)
            }
            Button {
                sunColor = .black
                cloudColor = .black
                rainColor = .black
                sunText = false
                cloudText = false
                rainText = false
            } label: {
                Text("リセット")
            }
            .padding(.top, 40)
        }
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SwiftChallenge
//
//  Created by 芥川浩平 on 2023/12/10.
//

import SwiftUI

struct Challenge1View: View {
    @State private var isSunTapped = false
    @State private var isCloudTapped = false
    @State private var isRainTapped = false

    var body: some View {
        VStack(spacing: 30) {
            HStack(spacing: 40) {
                Button {
                    isSunTapped = true
                } label: {
                    VStack {
                        Image(systemName: "sun.min.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(isSunTapped ? .orange : .black)
                        if isSunTapped {
                            Text("晴れ")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                }
                Button {
                    isCloudTapped = true
                } label: {
                    VStack {
                        Image(systemName: "cloud.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(isCloudTapped ? .gray : .black)
                        if isCloudTapped {
                            Text("曇り")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                }
                Button {
                    isRainTapped = true
                } label: {
                    VStack {
                        Image(systemName: "cloud.heavyrain.fill")
                            .resizable()
                            .frame(width: 48, height: 48)
                            .foregroundStyle(isRainTapped ? .blue : .black)
                        if isRainTapped {
                            Text("雨")
                                .foregroundColor(.black)
                                .font(.headline)
                        }
                    }
                }
            }
            Button {
                isSunTapped = false
                isCloudTapped = false
                isRainTapped = false
            } label: {
                Text("リセット")
            }
        }
    }
}

#Preview {
    Challenge1View()
}

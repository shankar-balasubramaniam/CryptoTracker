//
//  LaunchView.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 20/03/25.
//

import SwiftUI

struct LaunchView: View {
    @State private var loadingText: [String] = "Loading your portfolio...".map({ String($0) })
    @State private var showLoadingText = false
    @State private var counter = 0
    @State private var loops = 0
    @Binding var showLaunchView: Bool
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Color.launch.background
                .ignoresSafeArea()
            
            Image("logo-transparent")
                .resizable()
                .frame(width: 100, height: 100)
            
            ZStack {
                if showLoadingText {
//                    Text(loadingText)
                        
//                        .transition(.scale.animation(.easeIn(duration: 0.5)))
                    HStack(spacing: 0) {
                        ForEach(loadingText.indices) { index in
                            Text(loadingText[index])
                                .font(.headline)
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.launch.accent)
                                .offset(y: counter == index ? -5 : 0)
                        }
                    }
                    .transition(.scale.animation(.easeIn))
                }
            }
            .offset(y: 70)
        }
        .onAppear {
            showLoadingText = true
        }
        .onReceive(timer) { _ in
            withAnimation(.spring) {
                let lastIndex = loadingText.count - 1
                if counter == lastIndex {
                    counter = 0
                    loops += 1
                    if loops >= 2 {
                        showLaunchView = false
                    }
                }
                counter += 1
            }
        }
    }
}

#Preview {
    LaunchView(showLaunchView: .constant(true))
}

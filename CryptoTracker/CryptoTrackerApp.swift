//
//  CryptoTrackerApp.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 20/02/25.
//

import SwiftUI

@main
struct CryptoTrackerApp: App {
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
            }
            .environmentObject(vm)
        }
    }
}

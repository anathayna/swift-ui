//
//  fructusApp.swift
//  fructus
//
//  Created by Ana Thayna Franca on 23/07/20.
//

import SwiftUI

@main
struct fructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            } else {
                ContentView()
            }
        }
    }
}

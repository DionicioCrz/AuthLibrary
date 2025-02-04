//
//  MyApp.swift
//  AuthLibrary_Example
//
//  Copyright © 2025 CocoaPods. All rights reserved.
//

import SwiftUI
import AuthLibrary

@available(iOS 14.0, *)
@main
struct MyApp: App {
    @StateObject var authManager = AuthManager()
    var body: some Scene {
        WindowGroup {
            /// Can override the library's SessionView file, to provide your own implementation
            AuthApp { user in
                CustomSessionView(viewModel: SessionViewModel(authManager: authManager, user: user))
            }
            .environmentObject(authManager)
            .onAppear {
                authManager.initializeAWS()
                authManager.checkUserState()
            }
        }
    }
}

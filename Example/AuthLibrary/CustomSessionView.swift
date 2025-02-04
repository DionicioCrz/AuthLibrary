//
//  CustomSessionView.swift
//  AuthLibrary_Example
//
//  Copyright © 2025 CocoaPods. All rights reserved.
//

import SwiftUI
import AuthLibrary

@available(iOS 14.0, *)
struct CustomSessionView: View {
    @StateObject private var viewModel: SessionViewModel

    init(viewModel: SessionViewModel) {
        _viewModel = StateObject(wrappedValue: viewModel)
    }

    var body: some View {
        TabView {
            Text("Cab")
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }

            Text("Cob")
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("TODO")
                }

            Text("Con")
                .tabItem {
                    Image(systemName: "folder.fill")
                    Text("TODO")
                }

            SettingsView()
                .tabItem {
                    Image(systemName: "gear")
                    Text("Settings")
                }
                .environmentObject(viewModel.authManager)
        }
    }
}

@available(iOS 14.0, *)
#Preview {
    SessionView(viewModel: SessionViewModel(authManager: AuthManager(), user: "User"))
}

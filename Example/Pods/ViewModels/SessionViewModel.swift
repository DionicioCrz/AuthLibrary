//
//  SessionViewModel.swift
//  AuthenticationLibrary
//
//

import SwiftUI

@available(iOS 13.0, *)
public class SessionViewModel: AuthViewModel {
    @Published var user: String
    
    public init(authManager: AuthManager, user: String) {
        self.user = user
        super.init(authManager: authManager)
    }
    
    public func logout() {
        authManager.signOut()
    }
}

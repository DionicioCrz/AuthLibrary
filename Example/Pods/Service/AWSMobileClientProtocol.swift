//
//  AWSMobileClientProtocol.swift
//  AuthenticationLibrary
//
//

import Foundation
import AWSMobileClient

public protocol AuthServiceProtocol {
    func signUp(username: String, password: String, attributes: [String: String], completion: @escaping (Result<SignUpConfirmationState, AuthError>) -> Void)
    func confirmSignUp(username: String, confirmationCode: String, completion: @escaping (Result<Void, AuthError>) -> Void)
    func signIn(username: String, password: String, completion: @escaping (Result<SignInState, AuthError>) -> Void)
    func signOut(completion: @escaping (Result<Void, AuthError>) -> Void)
    func checkUserState(completion: @escaping (Result<UserState, AuthError>) -> Void)
}

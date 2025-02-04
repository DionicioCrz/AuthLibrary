//
//  CredentialsStorage.swift
//  AuthenticationLibrary
//
//

import Foundation
import KeychainSwift

final public class KeychainManager {
    public let keychain: KeychainSwift
    
    public init() {
        let keychain = KeychainSwift()
        keychain.synchronizable = true
        self.keychain = keychain
    }
    
    public func set(_ value: String, key: String) {
        keychain.set(value, forKey: key)
    }
    
    public func get(key: String) -> String? {
        return keychain.get(key)
    }
}

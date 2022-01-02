//
//  AuthManager.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/02.
//

import Foundation

final class AuthManager {
    // static: 全インスタンスから共通で利用される
    static let shared = AuthManager()
    
    private init() {}
    
    var isSignedIn: Bool {
        return false
    }
    
    private var accessToken: String? {
        return nil
    }
    
    private var refreshToken: String? {
        return nil
    }
    
    private var tokenExpirationDate: String? {
        return nil
    }
    
    private var shouldRefreshToken: String? {
        return nil
    }
}

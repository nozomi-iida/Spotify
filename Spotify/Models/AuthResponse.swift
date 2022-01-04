//
//  AuthResponse.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/04.
//

import Foundation

struct AuthResponse: Codable {
    let access_token: String
    let expires_in: Int
    let refresh_token: String?
    // let scope: String
    let token_type: String
}

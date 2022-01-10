//
//  UserProfile.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/02.
//

import Foundation

struct UserProfile: Codable {
    let country: String
    let display_name: String
    let email: String
    let explicit_content: [String: Bool]
    let external_urls: [String: String]
    let id: String
    let product: String
    let images: [UserImage]
}

// Codable: API通信等で取得したJSONやプロパティリストを任意のデータ型に変換するプロトコル => データをアプリを実装しやすいデータ型に変換することで処理が楽になる
struct UserImage: Codable {
    let url: String
}

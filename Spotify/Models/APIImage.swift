//
//  UserImage.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/10.
//

import Foundation

// Codable: API通信等で取得したJSONやプロパティリストを任意のデータ型に変換するプロトコル => データをアプリを実装しやすいデータ型に変換することで処理が楽になる
struct APIImage: Codable {
    let url: String
}

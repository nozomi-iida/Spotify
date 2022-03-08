//
//  Artist.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/02.
//

import Foundation


struct Artist: Codable {
    let id: String
    let name: String
    let type: String
    let external_urls: [String: String]
}

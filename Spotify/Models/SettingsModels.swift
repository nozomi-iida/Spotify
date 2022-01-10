//
//  SettingsModels.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/05.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}

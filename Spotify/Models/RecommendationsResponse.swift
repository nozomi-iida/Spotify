//
//  RecommendationsResponse.swift
//  Spotify
//
//  Created by iida nozomi on 2022/01/16.
//

import Foundation

struct RecommendationResponse: Codable {
    let tracks: [AudioTrack]
}

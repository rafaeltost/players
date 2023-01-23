//
//  PlayerModel.swift
//  players
//
//  Created by Rafael Tosta on 21/01/23.
//

import Foundation

struct PlayerModel: Decodable, Equatable {
    let id: Int
    let name: String
    let avatarURL: String
    
    private enum CodingKeys: String, CodingKey {
        case id, name
        case avatarURL = "avatar_url"
    }
}

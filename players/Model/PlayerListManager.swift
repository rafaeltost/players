//
//  PlayerListManager.swift
//  players
//
//  Created by Rafael Tosta on 21/01/23.
//

import Foundation

final class PlayerListManager {
    
    private(set) var list: [PlayerModel] = []
    
    func add(_ player: PlayerModel) {
        list.append(player)
    }
    
    func removeFirst(_ player: PlayerModel) {
        guard let index = list.firstIndex(of: player) else { return }
        list.remove(at: index)
    }
    
    func getFrom(_ index: Int) -> PlayerModel? {
        guard list.count > index else { return nil }
        return list[index]
    }
    
}

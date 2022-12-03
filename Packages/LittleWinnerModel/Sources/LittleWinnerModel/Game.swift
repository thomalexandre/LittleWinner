//
//  Game.swift
//  
//
//  Created by Alexandre Thomas on 2022. 12. 03..
//

import Foundation

public struct Game: Identifiable {
    public var id = UUID()
    public let team1: Team
    public let team2: Team
    
    public init(team1: Team, team2: Team) {
        self.team1 = team1
        self.team2 = team2
    }
}

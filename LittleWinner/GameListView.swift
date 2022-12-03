//
//  GameListView.swift
//  LittleWinner
//
//  Created by Alexandre Thomas on 2022. 12. 03..
//

import SwiftUI
import LittleWinnerModel

struct GameListView: View {
    
    let games: [Game]
    
    var body: some View {
        List {
            ForEach(games) { game in
                GameInfoRowView(game: game)
            }
        }
    }
}

struct GameListView_Previews: PreviewProvider {
    static var previews: some View {
        GameListView(games: .all)
    }
}

extension Array where Element == Game {

    static var all: [Game] {
        [
            Game(team1: Team(name: "France", icon: "france-flag-square-medium"),
                 team2: Team(name: "Jamaica", icon: "jamaica-flag-square-medium")),
            Game(team1: Team(name: "Sweden", icon: "sweden-flag-square-medium"),
                 team2: Team(name: "Saudi Arabia", icon: "saudi-arabia-flag-square-medium")),
            Game(team1: Team(name: "Hungary", icon: "hungary-flag-square-medium"),
                 team2: Team(name: "South Korea", icon: "south-korea-flag-round-medium")),
            Game(team1: Team(name: "North Macedonia", icon: "north-macedonia-flag-square-medium"),
                 team2: Team(name: "Croatia", icon: "croatia-flag-square-medium")),
            Game(team1: Team(name: "Canada", icon: "canada-flag-square-medium"),
                 team2: Team(name: "Senegal", icon: "senegal-flag-square-medium")),
            Game(team1: Team(name: "Norway", icon: "norway-flag-square-medium"),
                 team2: Team(name: "Cameroon", icon: "cameroon-flag-square-medium")),
            Game(team1: Team(name: "Czech Republic", icon: "czech-republic-flag-square-medium"),
                 team2: Team(name: "Brazil", icon: "brazil-flag-square-medium")),
            Game(team1: Team(name: "Germany", icon: "germany-flag-square-medium"),
                 team2: Team(name: "Argentina", icon: "argentina-flag-square-medium")),
            Game(team1: Team(name: "Greece", icon: "greece-flag-square-medium"),
                 team2: Team(name: "Spain", icon: "spain-flag-square-medium"))
        ]
    }
}

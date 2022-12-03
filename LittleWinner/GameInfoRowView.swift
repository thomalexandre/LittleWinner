//
//  GameInfoRowView.swift
//  LittleWinner
//
//  Created by Alexandre Thomas on 2022. 12. 03..
//

import SwiftUI
import LittleWinnerModel

struct GameInfoRowView: View {
    
    let game: Game
    @State private var score1: String = "1"
    @State private var score2: String = "2"
    
    var body: some View {
        HStack {
            VStack {
                Image(game.team1.icon)
                    .resizable()
                    .scaledToFit()
                    .padding(.all, 20)
                Text(game.team1.name)
            }
            VStack {
                HStack {
                    Text("Final")
                        .foregroundColor(.black)
                    Text("16:00")
                        .foregroundColor(.gray)
                }
                HStack {
                    TextField("", text: $score1)
                        .border(.gray)
                        .multilineTextAlignment(.center)
                    TextField("", text: $score2)
                        .border(.gray)
                        .multilineTextAlignment(.center)
                }
                HStack {
                    Button("19") {
                        
                    }
                    .foregroundColor(.black)
                    .background(.gray)
                    .cornerRadius(3)
                    Button("43") {
                        
                    }
                    .foregroundColor(.black)
                    .background(.gray)
                    .cornerRadius(3)
                    Button("19") {
                        
                    }
                    .foregroundColor(.blue)
                    .border(.blue)
                    .cornerRadius(3)
                }
            }
            VStack {
                Image(game.team2.icon)
                    .resizable()
                    .scaledToFit()
                    .padding(.all, 20)
                Text(game.team1.name)
            }
        }
    }
}

struct GameInfoRowView_Previews: PreviewProvider {
    static var previews: some View {
        GameInfoRowView(game: Game(team1: Team(name: "France", icon: "france-flag-square-medium"),
                                   team2: Team(name: "Jamaica", icon: "jamaica-flag-square-medium")))
    }
}

//
//  Team.swift
//  
//
//  Created by Alexandre Thomas on 2022. 12. 03..
//

import Foundation

public struct Team: Identifiable {
    public var id = UUID()
    public let name: String
    public let icon: String
    
    public init(name: String, icon: String) {
        self.name = name
        self.icon = icon
    }
}

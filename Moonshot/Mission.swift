//
//  Mission.swift
//  Moonshot
//
//  Created by Chris Viarengo on 4/12/22.
//

import Foundation

struct  CrewRole: Codable {
    let name: String
    let role: String
}

struct Mission: Codable, Identifiable {
    let id: Int
    let launchDate: String?
    let crew: [CrewRole]
    let description: String
    
    var displayName: String {
        "Apollo \(id)"
    }
    var image: String {
        "apollo\(id)"
    }
}

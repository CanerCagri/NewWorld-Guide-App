//
//  Model.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import Foundation


struct DungeonModel {
    var name: String
    var location: String
    var levelRequirement: Int
    var type: [String]
    var weakneses: [String]
    var resistanses: [String]
}

struct DungeonMockData {
    static var mockData: [DungeonModel] = [
        DungeonModel(name: "Amrine Excavation", location: "Windsward", levelRequirement: 25, type: ["The Lost"], weakneses: ["Strike", "Ice", "Nature"], resistanses: ["Thrust", "Void"]),
        DungeonModel(name: "Starstone Barrows", location: "Everfall", levelRequirement: 35, type: ["Ancient Guardian"], weakneses: ["Lightning", "Strike", "Void"], resistanses: ["Fire", "Slash"]),
        DungeonModel(name: "The Depths", location: "Restless Shore", levelRequirement: 45, type: ["The Corrupted"], weakneses: ["Thrust", "Nature", "Arcane"], resistanses: ["Strike", "Ice"]),
        DungeonModel(name: "Dynasty Shipyard", location: "Ebonscale Reach", levelRequirement: 55, type: ["The Corrupted"], weakneses: ["Thrust", "Nature", "Arcane"], resistanses: ["Strike", "Ice"]),
        DungeonModel(name: "Garden Of Genesis", location: "Edengrove", levelRequirement: 60, type: ["The Angry Earth"], weakneses: ["Slash", "Fire"], resistanses: ["Thrust", "Lightning"]),
        DungeonModel(name: "Lazarus Instrumentality", location: "Reekwater", levelRequirement: 60, type: ["Ancient Guardian"], weakneses: ["Lightning", "Strike", "Void"], resistanses: ["Fire", "Slash"]),
        DungeonModel(name: "Barnacles And Black Powder", location: "Cutlass Keys", levelRequirement: 60, type: ["The Lost"], weakneses: ["Strike", "Ice", "Nature"], resistanses: ["Thrust", "Void"]),
        DungeonModel(name: "Tempest's Heart", location: "Shattered Mountain", levelRequirement: 60, type: ["The Corrupted"], weakneses: ["Thrust", "Nature", "Arcane"], resistanses: ["Strike", "Ice"]),
        DungeonModel(name: "The Ennead", location: "Brimstone Sands", levelRequirement: 65, type: ["Ancient", "Corrupted"], weakneses: ["Lightning", "Strike", "Void"], resistanses: ["Fire", "Slash"])
    ]
}

//
//  Model.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import Foundation

struct DungeonModel {
    var name: String
    var levelRequirement: Int
    var weakneses: [String]
    var resistanses: [String]
}

struct WeaponModel: Codable, Hashable {
    var nane: String
    var scale: [String]
    var damageType: [String]
}

struct DungeonMockData {
    static var mockData: [DungeonModel] = [
        DungeonModel(name: "Lazarus", levelRequirement: 60, weakneses: ["Lightning Damage %50", "Strike Damage %20", "Void Damage %15"], resistanses: ["Fire Damage %40", "Slash Damage %15"]),
        DungeonModel(name: "test", levelRequirement: 12, weakneses: ["test1", "test2"], resistanses: ["test3", "test4"])
    ]
}

struct WeaponMockData {
    static var mockdata: [WeaponModel] = [
        WeaponModel(nane: "Sword And Shield", scale: ["Strength", "Constitution"], damageType: ["Slash", "Thrust"]),
        WeaponModel(nane: "Rapier", scale: ["Dexterity", "Intelligence"], damageType: ["Slash", "Thrust"])
    ]
}

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
    var type: String
    var weakneses: [String]
    var resistanses: [String]
}

struct WeaponModel: Codable, Hashable {
    var image: String
    var name: String
    var scale: [String]?
    var damageType: [String]?
}

struct DungeonMockData {
    static var mockData: [DungeonModel] = [
        DungeonModel(name: "Amrine Excavation", location: "Windwsward", levelRequirement: 25, type: "The Lost", weakneses: ["Strike", "Ice", "Nature"], resistanses: ["Thrust", "Void"]),
        DungeonModel(name: "Starstone Barrows", location: "Everfall", levelRequirement: 35, type: "Ancient Guardian", weakneses: ["Lightning", "Strike", "Void"], resistanses: ["Fire", "Slash"]),
        DungeonModel(name: "The Depths", location: "Restless Shore", levelRequirement: 45, type: "The Corrupted", weakneses: ["Thrust", "Nature", "Arcane"], resistanses: ["Strike", "Ice"]),
        DungeonModel(name: "Dynasty Shipyard", location: "Ebonscale Reach", levelRequirement: 55, type: "The Corrupted", weakneses: ["Thrust", "Nature", "Arcane"], resistanses: ["Strike", "Ice"]),
        DungeonModel(name: "Garden Of Genesis", location: "Edengrove", levelRequirement: 60, type: "The Angry Earth", weakneses: ["Slash", "Fire"], resistanses: ["Thrust", "Lightning"]),
        DungeonModel(name: "Lazarus Instrumentality", location: "Reekwater", levelRequirement: 60, type: "Ancient Guardian", weakneses: ["Lightning", "Strike", "Void"], resistanses: ["Fire", "Slash"]),
        DungeonModel(name: "Barnacles And Black Powder", location: "Cutlass Keys", levelRequirement: 60, type: "The Lost", weakneses: ["Strike", "Ice", "Nature"], resistanses: ["Thrust", "Void"]),
        DungeonModel(name: "Tempest's Heart", location: "Shattered Mountain", levelRequirement: 60, type: "The Corrupted", weakneses: ["Thrust", "Nature", "Arcane"], resistanses: ["Strike", "Ice"])
    ]
}

struct WeaponMockData {
    static var mockdata: [WeaponModel] = [
        WeaponModel(image: "rapier", name: "Rapier", scale: ["Dexterity", "Intelligence"], damageType: ["Slash", "Thrust"]),
        WeaponModel(image: "hatchet", name: "Hatchet", scale: ["Strength", "Dexterity"], damageType: ["Slash"]),
        WeaponModel(image: "swordandshield", name: "Sword And Shield", scale: ["Strength", "Constitution"], damageType: ["Slash", "Thrust"]),
        WeaponModel(image: "spear", name: "Spear", scale: ["Dexterity", "Strength"], damageType: ["Thrust"]),
        WeaponModel(image: "greataxe", name: "Great Axe", scale: ["Strength"], damageType: ["Slash"]),
        WeaponModel(image: "warhammer", name: "War Hammer", scale: ["Strength"], damageType: ["Strike"]),
        WeaponModel(image: "bow", name: "Bow", scale: ["Dexterity"], damageType: ["Thrust"]),
        WeaponModel(image: "musket", name: "Musket", scale: ["Dexterity", "Intelligence"], damageType: ["Thrust"]),
        WeaponModel(image: "firestaff", name: "Fire Staff", scale: ["Intelligence"], damageType: ["Fire"]),
        WeaponModel(image: "lifestaff", name: "Life Staff", scale: ["Focus"], damageType: ["Nature"]),
        WeaponModel(image: "icegauntlet", name: "Ice Gauntlet", scale: ["Intelligence"], damageType: ["Ice"]),
        WeaponModel(image: "voidgauntlet", name: "Void Gauntlet", scale: ["Intelligence", "Focus"], damageType: ["Void"])
    ]
}

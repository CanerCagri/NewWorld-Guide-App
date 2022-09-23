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

struct PerkModel {
    var image: String
    var name: String
    var description: String
    var tier: String
}

struct DungeonMockData {
    static var mockData: [DungeonModel] = [
        DungeonModel(name: "Amrine Excavation", location: "Windsward", levelRequirement: 25, type: "The Lost", weakneses: ["Strike", "Ice", "Nature"], resistanses: ["Thrust", "Void"]),
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

struct PerkMockData {
    static var mockdata: [PerkModel] = [
        PerkModel(image: "abyssalIV", name: "Abyssal IV", description: "50% of damage is converted to Void. Damage scales off base weapon stat or INT, whichever is higher.", tier: "IV"),
        PerkModel(image: "electrifiedIV", name: "Electrified IV", description: "50% of damage is converted to Lightning. Damage scales off base weapon stat or INT, whichever is higher.", tier: "IV"),
        PerkModel(image: "empoweredIV", name: "Empowered IV", description: "50% of damage is converted to Arcane. Damage scales off base weapon stat or INT, whichever is higher.", tier: "IV"),
        PerkModel(image: "ignitedIV", name: "Ignited IV", description: "50% of damage is converted to Fire. Damage scales off base weapon stat or INT, whichever is higher.", tier: "IV"),
        PerkModel(image: "frozenIV", name: "Frozen IV", description: "50% of damage is converted to Ice. Damage scales off base weapon stat or INT, whichever is higher.", tier: "IV"),
        PerkModel(image: "arborealIV", name: "Arboreal IV", description: "50% of damage is converted to Nature. Damage scales off base weapon stat or FOC, whichever is higher.", tier: "IV"),
        PerkModel(image: "brashIV", name: "Brash IV", description: "+30% damage against targets with full Health.", tier: "IV"),
        PerkModel(image: "opportunistIV", name: "Opportunist IV", description: "+20% damage against targets with less than 30% Health.", tier: "IV"),
        PerkModel(image: "retaliateIV", name: "Retaliate IV", description: "Deal +15% damage for 2 seconds after taking a hit.", tier: "IV"),
        PerkModel(image: "exhilarateIV", name: "Exhilarate IV", description: "Deal +24% increased damage while your health is below 30%.", tier: "IV"),
        PerkModel(image: "cruelIV", name: "Cruel IV", description: "+12% damage against targets with an active Crowd Control status effect (Slow, Stun, Root.)", tier: "IV"),
        PerkModel(image: "gambitIV", name: "Gambit IV", description: "+15% damage while your stamina is not full.", tier: "IV"),
        PerkModel(image: "rallyIV", name: "Rally IV", description: "+15% damage and outgoing healing while at full health.", tier: "IV"),
        PerkModel(image: "abyssalwardIV", name: "Abyssal Ward IV", description: "+6% Void Damage Absorption.", tier: "IV"),
        PerkModel(image: "firewardIV", name: "Fire Ward IV", description: "+6% Fire Damage Absorption.", tier: "IV"),
        PerkModel(image: "lightningwardIV", name: "Lightning Ward IV", description: "+6% Lightning Damage Absorption.", tier: "IV"),
        PerkModel(image: "arcanewardIV", name: "Arcane Ward IV", description: "+6% Arcane Damage Absorption.", tier: "IV"),
        PerkModel(image: "icewardIV", name: "Ice Ward IV", description: "+6% Ice Damage Absorption.", tier: "IV"),
        PerkModel(image: "naturewardIV", name: "Nature Ward IV", description: "+6% Nature Damage Absorption.", tier: "IV"),
        PerkModel(image: "slashwardIV", name: "Slash Ward IV", description: "+5% Slash Damage Absorption.", tier: "IV"),
        PerkModel(image: "strikewardIV", name: "Strike Ward IV", description: "+5% Strike Damage Absorption.", tier: "IV"),
        PerkModel(image: "thrustwardIV", name: "Thrust Ward IV", description: "+5% Thrust Damage Absorption.", tier: "IV"),
        PerkModel(image: "physicalwardIV", name: "Physicial Ward IV", description: "2.5% Physical Damage Absorption.", tier: "IV"),
        PerkModel(image: "wildernesswardIV", name: "Wilderness Ward IV", description: "1.9% Physical and 0.63% Elemental Damage Absorption.", tier: "IV"),
        PerkModel(image: "elementalwardIV", name: "Elemental Ward IV", description: "2.5% Elemental Damage Absorption.", tier: "IV"),
        PerkModel(image: "spectralwardIV", name: "Spectral Ward IV", description: "1.9% Elemental and 0.63% Physical Damage Absorption.", tier: "IV"),
    ]
}

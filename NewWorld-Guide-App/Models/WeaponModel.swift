//
//  WeaponModel.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 26.09.2022.
//

import Foundation


struct WeaponModel: Codable, Hashable {
    var image: String
    var name: String
    var scale: [String]?
    var damageType: [String]?
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

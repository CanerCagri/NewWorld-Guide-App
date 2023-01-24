//
//  WeaponModel.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 26.09.2022.
//

import Foundation


struct WeaponModel: Codable, Hashable {
    var detail: String
    var image: String
    var name: String
    var scale: [String]?
    var damageType: [String]?
    var skillTreeImage: String
    var skillTreeFirst: String
    var skillTreeSecond: String

    
}

struct WeaponMockData {
    static var mockdata: [WeaponModel] = [
        WeaponModel(detail: "Greatswords benefit primarily from Strength, but Dexterity also contributes.", image: "greatsword", name: "Great Sword", scale: ["Strength", "Dexterity"], damageType: ["Slash"], skillTreeImage: "greatswordtree", skillTreeFirst: "Onslaught", skillTreeSecond: "Defiance"),
        WeaponModel(detail: "A quick oriented melee weapon with a variety of quick lunge attacks. Excels at precise timing and outmaneuvering opponents while applying bleeds that gradually drain the target's health. Rapier damage scales with Intelligence and dexterity. Light attacks deal 100% thrusting weapon damage, while light middle swipes deal 66% thrusting weapon damage, but are faster than normal attacks. Heavy attacks deal 133% thrusting weapon damage.", image: "rapier", name: "Rapier", scale: ["Dexterity", "Intelligence"], damageType: ["Slash", "Thrust"], skillTreeImage: "rapiertree", skillTreeFirst: "Blood", skillTreeSecond: "Grace"),
        WeaponModel(detail: "Hatchets scales primarily with strength but also benefits from dexterity. Hatchets have two skill trees, Berserker and Throwing.", image: "hatchet", name: "Hatchet", scale: ["Strength", "Dexterity"], damageType: ["Slash"], skillTreeImage: "hatchettree", skillTreeFirst: "Berserker", skillTreeSecond: "Throwing"),
        WeaponModel(detail: "Swords damage scales primarily with strength but also benefits from dexterity. Swords can be used in combination with a shield. Light attacks deal 100% slashing weapon damage, and can build up combo points, dealing 105% slashing weapon damage in a 360 degree melee radius at the third attack. Heavy attacks deal 120% thrusting weapon damage, which can be charged up to 160%.", image: "swordandshield", name: "Sword And Shield", scale: ["Strength", "Constitution"], damageType: ["Slash", "Thrust"], skillTreeImage: "swordandshieldtree", skillTreeFirst: "Sword Master", skillTreeSecond: "Defender"),
        WeaponModel(detail: "Spear damage scales with Dexterity and partially with Strength. Spears offer both short range control and long distance piercing damage. Spear has two skill trees: Zoner (Specializes in keeping enemies at a distance and throwing spears from range) and Impaler (Specializes closing the gap and quicker attacks that impart status effects).", image: "spear", name: "Spear", scale: ["Dexterity", "Strength"], damageType: ["Thrust"], skillTreeImage: "speartree", skillTreeFirst: "Zoner", skillTreeSecond: "Impaler"),
        WeaponModel(detail: "Great Axes scale with strength. The Great Axe is a two-handed melee weapon that excels at large, sweeping attacks. The Great Axe will have 2 crafted weapon perks specific to it in addition to the perks that are broadly applicable to other weapons. Light attacks deal 100% slashing weapon damage. Heavy attacks deal 120% slashing weapon damage, which can be charged up to 160% slashing weapon damage.", image: "greataxe", name: "Great Axe", scale: ["Strength"], damageType: ["Slash"], skillTreeImage: "greataxetree", skillTreeFirst: "Reaper", skillTreeSecond: "Mauler"),
        WeaponModel(detail: "War Hammers damage scales with strength. War Hammers have two skill trees, Juggernaut and Crowd Crusher.", image: "warhammer", name: "War Hammer", scale: ["Strength"], damageType: ["Strike"], skillTreeImage: "warhammertree", skillTreeFirst: "Juggernaut", skillTreeSecond: "Crowd Crusher"),
        WeaponModel(detail: "Bows make use of arrows, which can be crafted using engineering or found in the world. Bow damage scales with dexterity. A bow can be fired using short drawn shots that inflict 100% of weapon damage or long drawn shots that inflict 170% of weapon damage.", image: "bow", name: "Bow", scale: ["Dexterity"], damageType: ["Thrust"], skillTreeImage: "bowtree", skillTreeFirst: "Skirmisher", skillTreeSecond: "Hunter"),
        WeaponModel(detail: "Muskets' damage scale primarily with Dexterity but also scales with Intelligence. Muskets have two skill tree, Sharpshooter and Trapper.", image: "musket", name: "Musket", scale: ["Dexterity", "Intelligence"], damageType: ["Thrust"], skillTreeImage: "muskettree", skillTreeFirst: "Sharpshooter", skillTreeSecond: "Trapper"),
        WeaponModel(detail: "Blunderbuss damage scale primarily with Strength but also scales with Intelligence. Blunderbuss' have two skill tree, Containment and Chaos.", image: "blunderbuss", name: "Blunderbuss", scale: ["Strength", "Intelligence"], damageType: ["Thrust"], skillTreeImage: "blunderbusstree", skillTreeFirst: "Containment", skillTreeSecond: "Chaos"),
        WeaponModel(detail: "Fire Staff's damage scales with Intelligence. Fire Staffs have two skill trees, Fire Mage and Pyromancer.", image: "firestaff", name: "Fire Staff", scale: ["Intelligence"], damageType: ["Fire"], skillTreeImage: "firestafftree", skillTreeFirst: "Fire Mage", skillTreeSecond: "Pyromancer"),
        WeaponModel(detail: "Life Staffs damage scales with focus. Life Staffs have two skill trees, Healing and Protector. Life Staffs are a primarily support weapon.", image: "lifestaff", name: "Life Staff", scale: ["Focus"], damageType: ["Nature"], skillTreeImage: "lifestafftree", skillTreeFirst: "Healing", skillTreeSecond: "Protector"),
        WeaponModel(detail: "Ice Gauntlet's damage scales with Intelligence. Ice Gauntlet has two skill trees, Ice Tempest and Builder.", image: "icegauntlet", name: "Ice Gauntlet", scale: ["Intelligence"], damageType: ["Ice"], skillTreeImage: "icegauntlettree", skillTreeFirst: "Ice Tempest", skillTreeSecond: "Builder"),
        WeaponModel(detail: "The Void Gauntlet is a magical damage/support hybrid weapon.", image: "voidgauntlet", name: "Void Gauntlet", scale: ["Intelligence", "Focus"], damageType: ["Void"], skillTreeImage: "voidgauntlettree", skillTreeFirst: "Annihilation", skillTreeSecond: "Decay")
    ]
}

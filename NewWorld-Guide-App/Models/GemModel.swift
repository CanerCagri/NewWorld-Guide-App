//
//  GemModel.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 26.09.2022.
//

import Foundation


struct GemModel: Codable, Hashable  {
    var image: String
    var name: String
    var weaponEffect: String
    var armorEffect: String
}

struct GemMockData {
    static var mockdata: [GemModel] = [
        GemModel(image: "CutAmber", name: "Cut Amber", weaponEffect: "Shifts your damage to Nature damage, scaling with Focus", armorEffect: "Improves your resistance against Nature damage"),
        GemModel(image: "CutAmethyst", name: "Cut Amethyst", weaponEffect: "Shifts your damage to Void damage, scaling with Intelligence", armorEffect: "Improves your resistance against Void damage"),
        GemModel(image: "CutAquamarine", name: "Cut Aquamarine", weaponEffect: "Shifts your damage to Ice Damage, scaling with Intelligence", armorEffect: "Improves your Ice Resistance"),
        GemModel(image: "CutCarnelian", name: "Cut Carnelian", weaponEffect: "Increases threat generated and allows some abilities to Taunt enemies", armorEffect: "Reduces threat generated"),
        GemModel(image: "CutDiamond", name: "Cut Diamond", weaponEffect: "Improves player's damage when at max Health.", armorEffect: "Improves both Elemental and Physical damage resistance favoring Physical"),
        GemModel(image: "CutEmerald", name: "Cut Emerald", weaponEffect: "Improves damage dealt against low health Enemies", armorEffect: "Improves Thrust damage resistance"),
        GemModel(image: "CutJasper", name: "Cut Jasper", weaponEffect: "Improves your damage after you receive three consecutive hits", armorEffect: "Improves your Strike damage resistance"),
        GemModel(image: "CutMalachite", name: "Cut Malachite", weaponEffect: "Improves your damage against Enemies under Crowd Control effect.", armorEffect: "Improves both Elemental and Physical damage resistance favoring Elemental"),
        GemModel(image: "CutMoonstone", name: "Cut Moonstone", weaponEffect: "Improves your damage when your health is below 30%. ", armorEffect: "Improves your Slash damage resistance"),
        GemModel(image: "CutOnyx", name: "Cut Onyx", weaponEffect: "Improves your damage against Enemies at max Health.", armorEffect: "Improves your Physical damage resistance"),
        GemModel(image: "CutOpal", name: "Cut Opal", weaponEffect: "Improves your damage when your Stamina is low.", armorEffect: "Improves your Elemental damage resistance"),
        GemModel(image: "CutRuby", name: "Cut Ruby", weaponEffect: "Shifts your damage to Fire Damage, scaling with Intelligence", armorEffect: "Improves your Fire damage resistance"),
        GemModel(image: "CutSapphire", name: "Cut Sapphire", weaponEffect: "Shifts your damage to Arcane Damage, scaling with Intelligence", armorEffect: "Improves your Arcane damage resistance"),
        GemModel(image: "CutTopaz", name: "Cut Topaz", weaponEffect: "Shifts your damage to Lighting Damage, scaling with Intelligence", armorEffect: "Improves your Lightning damage resistance")
    ]
}

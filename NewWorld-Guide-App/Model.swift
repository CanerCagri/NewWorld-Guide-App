//
//  Model.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import Foundation

struct Model {
    var name: String
    var levelRequirement: Int
    var weakneses: [String]
    var resistanses: [String]
}

struct MockData {
    static var mockData: [Model] = [
        Model(name: "Lazarus", levelRequirement: 60, weakneses: ["Lightning Damage %50", "Strike Damage %20", "Void Damage %15"], resistanses: ["Fire Damage %40", "Slash Damage %15"]),
        Model(name: "test", levelRequirement: 12, weakneses: ["test1", "test2"], resistanses: ["test3", "test4"])
    ]
}

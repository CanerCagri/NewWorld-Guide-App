//
//  DungeonsTableViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 21.09.2022.
//

import UIKit


class DungeonsTableViewCell: UITableViewCell {
    
    // MARK: Views
    
    let dungeonName = NWBodyLabel(text: "Dungeon Name", textAlignment: .center, fontSize: 15, textColor: .label, minimumScale: 0.8)
    let dungeonType = NWBodyLabel(text: "Dungeon Type", textAlignment: .center, fontSize: 11, textColor: .systemBlue, minimumScale: 0.8)
    let dungeonLevel = NWBodyLabel(text: "00", textAlignment: .center, fontSize: 13, textColor: .label, minimumScale: 0.8)
    let dungeonLocation = NWBodyLabel(text: "Dungeon Location", textAlignment: .center, fontSize: 13, textColor: .label, minimumScale: 0.7)
    let weaknessLabel = NWBodyLabel(text: "Weaknesses", textAlignment: .left, fontSize: 12, textColor: .systemRed, minimumScale: 0.6)
    let weakness = NWBodyLabel(text: "", textAlignment: .left, fontSize: 11, textColor: .label, minimumScale: 0.5)
    let strongestLabel = NWBodyLabel(text: "Strengths", textAlignment: .left, fontSize: 12, textColor: .systemRed, minimumScale: 0.6)
    let strongest = NWBodyLabel(text: "", textAlignment: .left, fontSize: 11, textColor: .label, minimumScale: 0.5)
    
    
    // MARK: Lifecycle methods
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        applyShadow(cornerRadius: 8)
        dungeonName.numberOfLines = 2
        self.selectionStyle = .none
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
    
    func set(dungeon: DungeonModel) {
        dungeonName.text = dungeon.name
//        dungeonType.text = dungeon.type
        dungeonLevel.text = "\(dungeon.levelRequirement)"
        dungeonLocation.text = dungeon.location
        
        let typeString = dungeon.type.map({ "\($0)/" }).joined()
        dungeonType.text = String(typeString[..<typeString.index(before: typeString.endIndex)])

        let weaknessString = dungeon.weakneses.map({ "\($0)/" }).joined()
        weakness.text = String(weaknessString[..<weaknessString.index(before: weaknessString.endIndex)])

        let resistancesString = dungeon.resistanses.map({ "\($0)/" }).joined()
        strongest.text = String(resistancesString[..<resistancesString.index(before: resistancesString.endIndex)])
    }

    
    private func configure() {
        addSubviews(dungeonName, dungeonType, dungeonLevel, dungeonLocation, weaknessLabel, weakness, strongestLabel, strongest)
        
        NSLayoutConstraint.activate([
            dungeonName.topAnchor.constraint(equalTo: self.topAnchor, constant: 20),
            dungeonName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 12),
            dungeonName.heightAnchor.constraint(equalToConstant: 30),
            dungeonName.widthAnchor.constraint(equalToConstant: 120),
            
            dungeonType.topAnchor.constraint(equalTo: dungeonName.bottomAnchor, constant: -2),
            dungeonType.leadingAnchor.constraint(equalTo: dungeonName.leadingAnchor),
            dungeonType.trailingAnchor.constraint(equalTo: dungeonName.trailingAnchor),
            dungeonType.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            
            
            dungeonLevel.leadingAnchor.constraint(equalTo: dungeonName.trailingAnchor, constant: 12),
            dungeonLevel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            dungeonLevel.heightAnchor.constraint(equalToConstant: 60),
            dungeonLevel.widthAnchor.constraint(equalToConstant: 40),
            
            dungeonLocation.leadingAnchor.constraint(equalTo: dungeonLevel.trailingAnchor, constant: 12),
            dungeonLocation.topAnchor.constraint(equalTo: dungeonLevel.topAnchor),
            dungeonLocation.heightAnchor.constraint(equalToConstant: 60),
            dungeonLocation.widthAnchor.constraint(equalToConstant: 80),
            
            weaknessLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            weaknessLabel.leadingAnchor.constraint(equalTo: dungeonLocation.trailingAnchor, constant: 10),
            weaknessLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            weaknessLabel.heightAnchor.constraint(equalToConstant: 15),
            
            weakness.topAnchor.constraint(equalTo: weaknessLabel.bottomAnchor),
            weakness.leadingAnchor.constraint(equalTo: weaknessLabel.leadingAnchor),
            weakness.trailingAnchor.constraint(equalTo: weaknessLabel.trailingAnchor),
            weakness.heightAnchor.constraint(equalToConstant: 20),
            
            strongestLabel.leadingAnchor.constraint(equalTo: weakness.leadingAnchor),
            strongestLabel.topAnchor.constraint(equalTo: weakness.bottomAnchor, constant: 7),
            strongestLabel.trailingAnchor.constraint(equalTo: weakness.trailingAnchor),
            strongestLabel.heightAnchor.constraint(equalToConstant: 15),
            
            strongest.topAnchor.constraint(equalTo: strongestLabel.bottomAnchor),
            strongest.leadingAnchor.constraint(equalTo: strongestLabel.leadingAnchor),
            strongest.trailingAnchor.constraint(equalTo: strongestLabel.trailingAnchor),
            strongest.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}

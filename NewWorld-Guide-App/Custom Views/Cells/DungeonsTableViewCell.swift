//
//  DungeonsTableViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 21.09.2022.
//

import UIKit

class DungeonsTableViewCell: UITableViewCell {

    static let reuseID = "DungeonsCell"
    let padding: CGFloat = 12
    
    let dungeonName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let dungeonLevel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let dungeonLocation: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let weakness: UILabel = {
        let label = UILabel()
//        label.text = "Weakness"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 13, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let strongest: UILabel = {
        let label = UILabel()
//        label.text = "Strongest"
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(dungeon: DungeonModel) {
        dungeonName.text = dungeon.name
        dungeonLevel.text = "\(dungeon.levelRequirement)"
        dungeonLocation.text = dungeon.location
        weakness.text = ""
        strongest.text = ""
        for i in 0..<dungeon.weakneses.count {
            weakness.text? += "\(dungeon.weakneses[i])/"
        }
        weakness.text?.removeLast()

        for j in 0..<dungeon.resistanses.count {
            strongest.text? += "\(dungeon.resistanses[j])/"
        }
        strongest.text?.removeLast()
    }
    
    private func configure() {
        addSubview(dungeonName)
        addSubview(dungeonLevel)
        addSubview(dungeonLocation)
        addSubview(weakness)
        addSubview(strongest)
        
//        accessoryType = .disclosureIndicator
        
        NSLayoutConstraint.activate([
            dungeonName.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            dungeonName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            dungeonName.heightAnchor.constraint(equalToConstant: 60),
            dungeonName.widthAnchor.constraint(equalToConstant: 120),
            
            dungeonLevel.leadingAnchor.constraint(equalTo: dungeonName.trailingAnchor, constant: padding),
            dungeonLevel.topAnchor.constraint(equalTo: dungeonName.topAnchor),
            dungeonLevel.heightAnchor.constraint(equalToConstant: 60),
            dungeonLevel.widthAnchor.constraint(equalToConstant: 40),
            
            dungeonLocation.leadingAnchor.constraint(equalTo: dungeonLevel.trailingAnchor, constant: padding),
            dungeonLocation.topAnchor.constraint(equalTo: dungeonLevel.topAnchor),
            dungeonLocation.heightAnchor.constraint(equalToConstant: 60),
            dungeonLocation.widthAnchor.constraint(equalToConstant: 80),
            
         
            weakness.topAnchor.constraint(equalTo: dungeonLocation.bottomAnchor, constant: -50),
            weakness.leadingAnchor.constraint(equalTo: dungeonLocation.trailingAnchor, constant: 20),
            weakness.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            weakness.widthAnchor.constraint(equalToConstant: 100),
            
            strongest.leadingAnchor.constraint(equalTo: dungeonLocation.trailingAnchor, constant: 20),
            strongest.topAnchor.constraint(equalTo: weakness.bottomAnchor, constant: 10),
            strongest.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            strongest.widthAnchor.constraint(equalToConstant: 100),
        ])
    }
}

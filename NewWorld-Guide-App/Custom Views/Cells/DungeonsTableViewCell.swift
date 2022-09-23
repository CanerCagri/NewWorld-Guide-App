//
//  DungeonsTableViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 21.09.2022.
//

import UIKit


class DungeonsTableViewCell: UITableViewCell {

    // MARK: Properties
    static let reuseID = "DungeonsCell"
    let padding: CGFloat = 12
    
    // MARK: Views
    let dungeonName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 11, weight: .heavy)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let dungeonLevel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 13, weight: .medium)
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
        label.font = UIFont.systemFont(ofSize: 11, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.7
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let weaknessLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        label.text = "Weaknesses"
        label.textColor = .red
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let weakness: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let strongestLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Strengths"
        label.font = UIFont.systemFont(ofSize: 11, weight: .bold)
        label.textColor = .red
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let strongest: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.5
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    // MARK: Lifecycle methods
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        applyShadow(cornerRadius: 8)
        self.selectionStyle = .none
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
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
        addSubview(weaknessLabel)
        addSubview(weakness)
        addSubview(strongestLabel)
        addSubview(strongest)
        
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
            
            weaknessLabel.topAnchor.constraint(equalTo: dungeonLocation.bottomAnchor, constant: -70),
            weaknessLabel.leadingAnchor.constraint(equalTo: dungeonLocation.trailingAnchor, constant: 10),
            weaknessLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            weaknessLabel.widthAnchor.constraint(equalToConstant: 100),
            weaknessLabel.heightAnchor.constraint(equalToConstant: 30),
            
            weakness.topAnchor.constraint(equalTo: weaknessLabel.bottomAnchor, constant: -13),
            weakness.leadingAnchor.constraint(equalTo: weaknessLabel.leadingAnchor),
            weakness.trailingAnchor.constraint(equalTo: weaknessLabel.trailingAnchor),
            weakness.widthAnchor.constraint(equalToConstant: 100),
            weakness.heightAnchor.constraint(equalToConstant: 30),
            
            strongestLabel.leadingAnchor.constraint(equalTo: weakness.leadingAnchor),
            strongestLabel.topAnchor.constraint(equalTo: weakness.bottomAnchor, constant: -6),
            strongestLabel.trailingAnchor.constraint(equalTo: weakness.trailingAnchor),
            strongestLabel.widthAnchor.constraint(equalToConstant: 100),
            strongestLabel.heightAnchor.constraint(equalToConstant: 30),
            
            strongest.topAnchor.constraint(equalTo: strongestLabel.bottomAnchor, constant: -13),
            strongest.leadingAnchor.constraint(equalTo: strongestLabel.leadingAnchor),
            strongest.trailingAnchor.constraint(equalTo: strongestLabel.trailingAnchor),
            strongest.widthAnchor.constraint(equalToConstant: 100),
            strongest.heightAnchor.constraint(equalToConstant: 30),
        ])
    }
}

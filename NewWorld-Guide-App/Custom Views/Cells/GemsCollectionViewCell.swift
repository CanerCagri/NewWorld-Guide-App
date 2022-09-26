//
//  GemsCollectionViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 26.09.2022.
//

import UIKit

class GemsCollectionViewCell: UICollectionViewCell {
    
    // MARK: Properties
    let padding: CGFloat = -10
    
    // MARK: Views
    let gemImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 12
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let gemName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 10, weight: .bold)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let gemEffectsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "Effects:"
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.textColor = .red
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let weaponEffectsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Weapons:"
        label.font = UIFont.systemFont(ofSize: 8, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.textColor = .red
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let weaponEffects: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.font = UIFont.systemFont(ofSize: 8, weight: .medium)
        label.textColor = .label
        label.text = "WeaponEffects"
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.numberOfLines = 3
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let armorsEffectsLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "Armors:"
        label.font = UIFont.systemFont(ofSize: 8, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.textColor = .red
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let armorsEffects: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.text = "ArmorEffects"
        label.font = UIFont.systemFont(ofSize: 8, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.numberOfLines = 3
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    // MARK: Lifecycle methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
    func set(gem: GemModel) {
        gemImageView.image = UIImage(named: gem.image)
        gemName.text = gem.name
        weaponEffects.text = gem.weaponEffect
        armorsEffects.text = gem.armorEffect
    }
    
    private func configure() {
        addSubview(gemImageView)
        addSubview(gemName)
        addSubview(gemEffectsLabel)
        addSubview(weaponEffectsLabel)
        addSubview(weaponEffects)
        addSubview(armorsEffectsLabel)
        addSubview(armorsEffects)
        
        NSLayoutConstraint.activate([
            gemImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            gemImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            gemImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            gemImageView.heightAnchor.constraint(equalTo: gemImageView.widthAnchor),
            
            gemName.topAnchor.constraint(equalTo: gemImageView.bottomAnchor, constant: 12),
            gemName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            gemName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            gemName.heightAnchor.constraint(equalToConstant: 20),
            
            gemEffectsLabel.topAnchor.constraint(equalTo: gemName.bottomAnchor, constant: -4),
            gemEffectsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            gemEffectsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            gemEffectsLabel.heightAnchor.constraint(equalToConstant: 20),
            
            weaponEffectsLabel.topAnchor.constraint(equalTo: gemEffectsLabel.bottomAnchor, constant: 5),
            weaponEffectsLabel.leadingAnchor.constraint(equalTo: gemImageView.leadingAnchor),
            weaponEffectsLabel.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            weaponEffectsLabel.heightAnchor.constraint(equalToConstant: 20),
            
            weaponEffects.topAnchor.constraint(equalTo: weaponEffectsLabel.bottomAnchor, constant: -5),
            weaponEffects.leadingAnchor.constraint(equalTo: weaponEffectsLabel.leadingAnchor),
            weaponEffects.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            weaponEffects.heightAnchor.constraint(equalToConstant: 30),
            
            armorsEffectsLabel.topAnchor.constraint(equalTo: weaponEffects.bottomAnchor, constant: 5),
            armorsEffectsLabel.leadingAnchor.constraint(equalTo: weaponEffects.leadingAnchor),
            armorsEffectsLabel.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            armorsEffectsLabel.heightAnchor.constraint(equalToConstant: 20),

            armorsEffects.topAnchor.constraint(equalTo: armorsEffectsLabel.bottomAnchor, constant: -5),
            armorsEffects.leadingAnchor.constraint(equalTo: armorsEffectsLabel.leadingAnchor),
            armorsEffects.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            armorsEffects.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}

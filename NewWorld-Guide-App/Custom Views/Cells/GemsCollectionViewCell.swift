//
//  GemsCollectionViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 26.09.2022.
//

import UIKit

class GemsCollectionViewCell: UICollectionViewCell {
    
    // MARK: Views

    let gemImageView = NWImageView(backgroundColor: .systemGray, cornerRadius: 12)
    let gemName = NWTitleLabel(textAlignment: .center, fontSize: 10)
    let gemEffectsLabel = NWBodyLabel(text: "Effects", textAlignment: .center, fontSize: 10, textColor: .systemRed, minimumScale: 0.8)
    let weaponEffectsLabel = NWBodyLabel(text: "Weapons", textAlignment: .left, fontSize: 8, textColor: .systemRed, minimumScale: 0.8)
    let weaponEffects = NWBodyLabel(text: "WeaponEffects", textAlignment: .left, fontSize: 8, textColor: .label, minimumScale: 0.8)
    let armorsEffectsLabel = NWBodyLabel(text: "Armors", textAlignment: .left, fontSize: 8, textColor: .systemRed, minimumScale: 0.8)
    let armorsEffects = NWBodyLabel(text: "ArmorEffects", textAlignment: .left, fontSize: 8, textColor: .label, minimumScale: 0.8)
    
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
        weaponEffects.numberOfLines = 4
        armorsEffects.numberOfLines = 4
        
        addSubviews(gemImageView, gemName, gemEffectsLabel, weaponEffectsLabel, weaponEffects, armorsEffectsLabel, armorsEffects)
        
        NSLayoutConstraint.activate([
            gemImageView.topAnchor.constraint(equalTo: topAnchor, constant: -10),
            gemImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10),
            gemImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            gemImageView.heightAnchor.constraint(equalTo: gemImageView.widthAnchor),
            
            gemName.topAnchor.constraint(equalTo: gemImageView.bottomAnchor, constant: 12),
            gemName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10),
            gemName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            gemName.heightAnchor.constraint(equalToConstant: 20),
            
            gemEffectsLabel.topAnchor.constraint(equalTo: gemName.bottomAnchor, constant: -4),
            gemEffectsLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: -10),
            gemEffectsLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 10),
            gemEffectsLabel.heightAnchor.constraint(equalToConstant: 20),
            
            weaponEffectsLabel.topAnchor.constraint(equalTo: gemEffectsLabel.bottomAnchor, constant: 5),
            weaponEffectsLabel.leadingAnchor.constraint(equalTo: gemImageView.leadingAnchor),
            weaponEffectsLabel.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            weaponEffectsLabel.heightAnchor.constraint(equalToConstant: 20),
            
            weaponEffects.topAnchor.constraint(equalTo: weaponEffectsLabel.bottomAnchor, constant: -5),
            weaponEffects.leadingAnchor.constraint(equalTo: weaponEffectsLabel.leadingAnchor),
            weaponEffects.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            weaponEffects.heightAnchor.constraint(equalToConstant: 40),
            
            armorsEffectsLabel.topAnchor.constraint(equalTo: weaponEffects.bottomAnchor, constant: 5),
            armorsEffectsLabel.leadingAnchor.constraint(equalTo: weaponEffects.leadingAnchor),
            armorsEffectsLabel.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            armorsEffectsLabel.heightAnchor.constraint(equalToConstant: 20),

            armorsEffects.topAnchor.constraint(equalTo: armorsEffectsLabel.bottomAnchor, constant: -5),
            armorsEffects.leadingAnchor.constraint(equalTo: armorsEffectsLabel.leadingAnchor),
            armorsEffects.trailingAnchor.constraint(equalTo: gemImageView.trailingAnchor),
            armorsEffects.heightAnchor.constraint(equalToConstant: 35)
        ])
    }
}

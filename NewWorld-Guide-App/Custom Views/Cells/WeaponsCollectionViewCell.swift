//
//  WeaponsCollectionViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit


class WeaponsCollectionViewCell: UICollectionViewCell {
    
    // MARK: Views

    let weaponImageView = NWImageView(backgroundColor: .gray, cornerRadius: 12)
    let weaponName = NWTitleLabel(textAlignment: .center, fontSize: 12)
    let weaponScales = NWBodyLabel(text: "", textAlignment: .center, fontSize: 10, textColor: .systemGray, minimumScale: 0.8)
    
    // MARK: Lifecycle methods
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
    func set(weapon: WeaponModel) {
        weaponImageView.image = UIImage(named: weapon.image)
        weaponName.text = weapon.name
        
        guard let weaponScale = weapon.scale else { return }
        let weaponString = weaponScale.map({ "\($0)/" }).joined()
         weaponScales.text = String(weaponString[..<weaponString.index(before: weaponString.endIndex)])
    }

    private func configure() {
        addSubviews(weaponImageView, weaponName, weaponScales)
        
        NSLayoutConstraint.activate([
            weaponImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8),
            weaponImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            weaponImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            weaponImageView.heightAnchor.constraint(equalTo: weaponImageView.widthAnchor),
            
            weaponName.topAnchor.constraint(equalTo: weaponImageView.bottomAnchor, constant: 12),
            weaponName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            weaponName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            weaponName.heightAnchor.constraint(equalToConstant: 20),
            
            weaponScales.topAnchor.constraint(equalTo: weaponName.bottomAnchor, constant: -4),
            weaponScales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
            weaponScales.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8),
            weaponScales.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}

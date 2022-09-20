//
//  WeaponsCollectionViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit


class WeaponsCollectionViewCell: UICollectionViewCell {
    
    static let reuseID = "WeaponsCell"
    let padding: CGFloat = 8
    
    let weaponImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .gray
        imageView.layer.cornerRadius = 12
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let weaponName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 13, weight: .heavy)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let weaponScales: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 10, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(weapon: WeaponModel) {
        weaponImageView.image = UIImage(named: weapon.image)
        weaponName.text = weapon.name
        weaponScales.text = ""
        for i in 0..<weapon.scale!.count {
            weaponScales.text? += "\(weapon.scale![i])/"
        }
        weaponScales.text?.removeLast()
        configure()
    }
    
    private func configure() {
        addSubview(weaponImageView)
        addSubview(weaponName)
        addSubview(weaponScales)
        
        NSLayoutConstraint.activate([
            weaponImageView.topAnchor.constraint(equalTo: topAnchor, constant: padding),
            weaponImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            weaponImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            weaponImageView.heightAnchor.constraint(equalTo: weaponImageView.widthAnchor),
            
            weaponName.topAnchor.constraint(equalTo: weaponImageView.bottomAnchor, constant: 12),
            weaponName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            weaponName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            weaponName.heightAnchor.constraint(equalToConstant: 20),
            
            weaponScales.topAnchor.constraint(equalTo: weaponName.bottomAnchor, constant: 5),
            weaponScales.leadingAnchor.constraint(equalTo: leadingAnchor, constant: padding),
            weaponScales.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -padding),
            weaponScales.heightAnchor.constraint(equalToConstant: 20),
        ])
    }
}

//
//  PerksTableViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 23.09.2022.
//

import UIKit


class PerksTableViewCell: UITableViewCell {

    // MARK: Views
    
    let perksImageView = NWImageView(backgroundColor: .darkGray, cornerRadius: 12)
    let perkName = NWTitleLabel(textAlignment: .center, fontSize: 11, backGroundColor: .systemGray3)
    let descriptionLabel = NWBodyLabel(text: "", textAlignment: .center, fontSize: 9, textColor: .label, minimumScale: 0.8)
    let tierLabel = NWBodyLabel(text: "", textAlignment: .center, fontSize: 12, textColor: .label, minimumScale: 0.8)
    
    // MARK: Lifecycle Methods
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
        perkName.numberOfLines = 2
        descriptionLabel.numberOfLines = 5
        configure()
        applyShadow(cornerRadius: 8)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: Functions
    func set(perk: PerkModel) {
        perksImageView.image = UIImage(named: perk.image)
        perkName.text = perk.name
        descriptionLabel.text = perk.description
        tierLabel.text = perk.tier
    }
    
    private func configure() {
        addSubviews(perksImageView, perkName, descriptionLabel, tierLabel)
        
        NSLayoutConstraint.activate([
            perksImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            perksImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            perksImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            perksImageView.widthAnchor.constraint(equalToConstant: 50),
            
            perkName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            perkName.leadingAnchor.constraint(equalTo: perksImageView.trailingAnchor, constant: 10),
            perkName.widthAnchor.constraint(equalToConstant: 100),
            perkName.heightAnchor.constraint(equalToConstant: 50),
            
            descriptionLabel.topAnchor.constraint(equalTo: perksImageView.topAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: perkName.trailingAnchor, constant: 10),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 130),
            
            tierLabel.topAnchor.constraint(equalTo: perkName.topAnchor),
            tierLabel.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: 10),
            tierLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            tierLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

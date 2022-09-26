//
//  PerksTableViewCell.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 23.09.2022.
//

import UIKit


class PerksTableViewCell: UITableViewCell {

    // MARK: Properties
    let padding: CGFloat = 10
    
    // MARK: Views
    let perksImageView: UIImageView = {
        var imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.layer.cornerRadius = 12
        imageView.backgroundColor = .darkGray
        imageView.clipsToBounds = true
        return imageView
    }()
    
    let perkName: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 11, weight: .heavy)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.backgroundColor = .systemGray3
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 9, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        label.numberOfLines = 5
        return label
    }()
    
    let tierLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 12, weight: .medium)
        label.textColor = .label
        label.adjustsFontSizeToFitWidth = true
        label.minimumScaleFactor = 0.8
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    // MARK: Lifecycle Methods
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.selectionStyle = .none
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
        addSubview(perksImageView)
        addSubview(perkName)
        addSubview(descriptionLabel)
        addSubview(tierLabel)
        
        NSLayoutConstraint.activate([
            perksImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            perksImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: padding),
            perksImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding),
            perksImageView.widthAnchor.constraint(equalToConstant: 50),
            
            perkName.topAnchor.constraint(equalTo: self.topAnchor, constant: padding),
            perkName.leadingAnchor.constraint(equalTo: perksImageView.trailingAnchor, constant: padding),
            perkName.widthAnchor.constraint(equalToConstant: 100),
            perkName.heightAnchor.constraint(equalToConstant: 50),
            
            descriptionLabel.topAnchor.constraint(equalTo: perksImageView.topAnchor),
            descriptionLabel.leadingAnchor.constraint(equalTo: perkName.trailingAnchor, constant: padding),
            descriptionLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -padding),
            descriptionLabel.widthAnchor.constraint(equalToConstant: 130),
            
            tierLabel.topAnchor.constraint(equalTo: perkName.topAnchor),
            tierLabel.leadingAnchor.constraint(equalTo: descriptionLabel.trailingAnchor, constant: padding),
            tierLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -padding),
            tierLabel.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
}

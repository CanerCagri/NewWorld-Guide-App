//
//  WeaponDetailViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 25.01.2023.
//

import UIKit

class WeaponDetailViewController: UIViewController {
    
    let descriptionLabel = NWBodyLabel(textAlignment: .left)
    let skillTreeLabel = NWTitleLabel(textAlignment: .center, fontSize: 22)
    let skillTreeImageView = NWImageView(backgroundColor: .systemBackground, cornerRadius: 12)
    
    var weapon: WeaponModel!

    init(weapon: WeaponModel) {
        super.init(nibName: nil, bundle: nil)
        self.weapon = weapon
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureViewController()
        configureUI()
        layoutUI()
        
    }
    
    private func configureViewController() {
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc func dismissVC() {
        dismiss(animated: true)
    }
    
    private func configureUI() {
        view.addSubviews(descriptionLabel, skillTreeLabel, skillTreeImageView)
        title = weapon.name
        navigationController?.navigationBar.prefersLargeTitles = true
        descriptionLabel.text = weapon.detail
        descriptionLabel.numberOfLines = 0
        skillTreeLabel.text = "Skill Tree"
        skillTreeLabel.textColor = .systemRed
        skillTreeImageView.image = UIImage(named: weapon.skillTreeImage)
    }
    
    private func layoutUI() {
        descriptionLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        descriptionLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        descriptionLabel.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
        skillTreeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        skillTreeLabel.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 30).isActive = true
        skillTreeLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        skillTreeLabel.widthAnchor.constraint(equalToConstant: 200).isActive = true
        
        skillTreeImageView.topAnchor.constraint(equalTo: skillTreeLabel.bottomAnchor).isActive = true
        skillTreeImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        skillTreeImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        skillTreeImageView.heightAnchor.constraint(equalToConstant: 250).isActive = true
    }
}

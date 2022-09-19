//
//  NWCharacters.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 19.09.2022.
//

import UIKit


class NWWeaponsViewController: UIViewController, UIGestureRecognizerDelegate {

    let imageView = UIImageView()
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(imageView)
        layoutUI()
        configureImageView()
        tapGesture()
    }
    
    func layoutUI() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            imageView.topAnchor.constraint(equalTo: view.topAnchor),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    func configureImageView() {
        imageView.image = UIImage(named: "weapons")
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 12
        imageView.tintColor = .secondaryLabel
    }
    
    func tapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(clickView))
        tapGesture.delegate = self
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func clickView() {
        print("You clicked on view")
    }
}

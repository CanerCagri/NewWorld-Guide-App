//
//  ViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import UIKit


class ViewController: UIViewController {
    
    let dungeons = UIView()
    let characters = UIView()
    var containers: [UIView] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "New World Guide"
        view.backgroundColor = .systemBackground
        layoutUI()
        configureUI()
    }
    
    func layoutUI() {
        containers = [characters, dungeons]
        for containerViews in containers {
            view.addSubview(containerViews)
            containerViews.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            characters.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            characters.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            characters.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            characters.heightAnchor.constraint(equalToConstant: 180),
            
            dungeons.topAnchor.constraint(equalTo: characters.bottomAnchor, constant: 20),
            dungeons.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            dungeons.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            dungeons.heightAnchor.constraint(equalToConstant: 180),
        ])
    }
    
    func configureUI() {
        self.add(childVC: NWDungeonsViewController(), containerView: self.dungeons)
        self.add(childVC: NWWeaponsViewController(), containerView: self.characters)
    }
    
    func add(childVC: UIViewController, containerView: UIView) {
        addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
    }
}


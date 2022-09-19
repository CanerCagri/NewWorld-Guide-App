//
//  ViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import UIKit
import SafariServices


class MainViewController: UIViewController {
    
    let dungeons = UIView()
    let characters = UIView()
    var containers: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "New World Guide"
        view.backgroundColor = .systemBackground
        layoutUI()
        topRightButton()
        configureUI()
    }
    
    func topRightButton() {
        let image =  UIImage(systemName: "questionmark.bubble.fill")
        let button = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(rightButtonTapped))
        navigationItem.rightBarButtonItem = button
    }
        
    @objc func rightButtonTapped() {
        let url = URL(string: "https://www.newworld.com/en-us/")
        let safariVC = SFSafariViewController(url: url!)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
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


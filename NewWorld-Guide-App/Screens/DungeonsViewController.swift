//
//  DungeonsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import UIKit

class DungeonsViewController: UIViewController {
    
    let lazarus = UIView()
    var containers: [UIView] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "New World Dungeons"
        view.backgroundColor = .systemBackground
        layoutUI()
//        configureUI()
        
    }
    
    func layoutUI() {
        containers = [lazarus]
        for containerViews in containers {
            view.addSubview(containerViews)
            containerViews.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            lazarus.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            lazarus.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            lazarus.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            lazarus.heightAnchor.constraint(equalToConstant: 180),
        ])
    }
    

}

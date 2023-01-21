//
//  ViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import UIKit
import SafariServices


class MainViewController: UIViewController {
    
    // MARK: Views
    
    let dungeons = UIView()
    let characters = UIView()
    let perks = UIView()
    let gems = UIView()
    var containers: [UIView] = []
    
    lazy var contentSize = CGSize(width: self.view.frame.width, height: self.view.frame.height + Constants.heightForDevice)
    
    lazy var scrollView: UIScrollView = {
        let view = UIScrollView(frame: .zero)
        view.backgroundColor = .white
        view.contentSize = contentSize
        view.frame = self.view.bounds
        view.autoresizingMask = .flexibleHeight
        view.bounces = true
        view.showsHorizontalScrollIndicator = true
        return view
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.frame.size = contentSize
        return view
    }()
    
    // MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        layoutUI()
        topRightButton()
        configureUI()
    }
    
 
    // MARK: Functions
    
    func configureViewController() {
        title = titles.guide
        view.backgroundColor = .systemBackground
        view.addSubview(scrollView)
        scrollView.backgroundColor = .systemBackground
        scrollView.addSubview(containerView)
        containerView.backgroundColor = .systemBackground
    }
    
    func topRightButton() {
        let image =  UIImage(systemName: Constants.mainRightTopButtonImageName)
        let button = UIBarButtonItem(image: image, style: .done, target: self, action: #selector(rightButtonTapped))
        navigationItem.rightBarButtonItem = button
    }
        
    @objc func rightButtonTapped() {
        let url = URL(string: Constants.mainRightTopButtonUrl)
        let safariVC = SFSafariViewController(url: url!)
        safariVC.preferredControlTintColor = .systemGreen
        present(safariVC, animated: true)
    }
    
    func layoutUI() {
        containers = [characters, dungeons, perks, gems]
        for containerViews in containers {
            containerView.addSubview(containerViews)
            containerViews.translatesAutoresizingMaskIntoConstraints = false
        }
        
        NSLayoutConstraint.activate([
            characters.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20),
            characters.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            characters.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            characters.heightAnchor.constraint(equalToConstant: 180),
            
            dungeons.topAnchor.constraint(equalTo: characters.bottomAnchor, constant: 20),
            dungeons.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            dungeons.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            dungeons.heightAnchor.constraint(equalToConstant: 180),
            
            perks.topAnchor.constraint(equalTo: dungeons.bottomAnchor, constant: 20),
            perks.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            perks.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            perks.heightAnchor.constraint(equalToConstant: 180),
            
            gems.topAnchor.constraint(equalTo: perks.bottomAnchor, constant: 20),
            gems.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            gems.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            gems.heightAnchor.constraint(equalToConstant: 180),
        ])
    }
    
    func configureUI() {
        self.add(childVC: NWDungeonsViewController(), containerView: self.dungeons)
        self.add(childVC: NWWeaponsViewController(), containerView: self.characters)
        self.add(childVC: NWPerksViewController(), containerView: self.perks)
        self.add(childVC: NWGemsViewController(), containerView: self.gems)
    }
    
    func add(childVC: UIViewController, containerView: UIView) {
        addChild(childVC)
        containerView.addSubview(childVC.view)
        childVC.view.frame = containerView.bounds
    }
}


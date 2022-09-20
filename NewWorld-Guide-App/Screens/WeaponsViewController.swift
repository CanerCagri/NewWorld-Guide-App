//
//  WeaponsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit

class WeaponsViewController: UIViewController {
    
    enum Section {
        case main
    }
    
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource <Section, WeaponModel>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureCollectionView()
        
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createThreeColumnFlowLayout(view: view))
        view.addSubview(collectionView)
        collectionView.backgroundColor = .systemBackground
        
    }
}

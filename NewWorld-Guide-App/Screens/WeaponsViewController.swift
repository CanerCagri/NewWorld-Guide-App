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
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Weapons"
        configureCollectionView()
        configureDataSource()
        updateData()
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createThreeColumnFlowLayout(view: view))
        view.addSubview(collectionView)
        
        collectionView.backgroundColor = .systemBackground
        collectionView.register(WeaponsCollectionViewCell.self, forCellWithReuseIdentifier: WeaponsCollectionViewCell.reuseID)
    }
    
    func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, WeaponModel>(collectionView: collectionView, cellProvider: { collectionView, indexPath, weapon in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: WeaponsCollectionViewCell.reuseID, for: indexPath) as! WeaponsCollectionViewCell
            cell.set(weapon: weapon)
            return cell
        })
    }
    
    func updateData() {
        var snapShot = NSDiffableDataSourceSnapshot<Section, WeaponModel>()
        snapShot.appendSections([.main])
        snapShot.appendItems(WeaponMockData.mockdata)
        
        dataSource.apply(snapShot, animatingDifferences: true)
    }
}

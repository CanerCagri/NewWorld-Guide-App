//
//  WeaponsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit


class WeaponsViewController: UIViewController {
    
    // MARK: Properties
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource <Section, WeaponModel>!
    
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureCollectionView()
        configureDataSource()
        updateData()
    }
    
    // MARK: Functions
    func configureViewController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = titles.weapons
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createThreeColumnFlowLayout(view: view))
        view.addSubview(collectionView)
        
        collectionView.backgroundColor = .systemBackground
        collectionView.register(WeaponsCollectionViewCell.self, forCellWithReuseIdentifier: reuseID.weaponCollectionViewCell)
    }
    
    func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, WeaponModel>(collectionView: collectionView, cellProvider: { collectionView, indexPath, weapon in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID.weaponCollectionViewCell, for: indexPath) as! WeaponsCollectionViewCell
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

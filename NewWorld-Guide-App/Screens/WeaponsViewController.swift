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
    
    // MARK: Properties
    
    var isSearching = false
    var weapons = WeaponMockData.mockdata
    var filteredWeapons: [WeaponModel] = []
    
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource <Section, WeaponModel>!
    let searchController = UISearchController()
    
    
    // MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureSearchController()
        configureCollectionView()
        configureDataSource()
        updateData(weapons: weapons)
    }
    
    // MARK: Functions
    
    func configureViewController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = titles.weapons
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search for a username"
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
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
    
    func updateData(weapons: [WeaponModel]) {
        var snapShot = NSDiffableDataSourceSnapshot<Section, WeaponModel>()
        snapShot.appendSections([.main])
        snapShot.appendItems(weapons)
        
        dataSource.apply(snapShot, animatingDifferences: true)
    }
}

extension WeaponsViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let filter = searchController.searchBar.text, !filter.isEmpty else {
            filteredWeapons.removeAll()
            isSearching = false
            updateData(weapons: weapons)
            return
        }
        
        isSearching = true
        filteredWeapons = weapons.filter { $0.name.lowercased().contains(filter.lowercased()) }
        updateData(weapons: filteredWeapons)
    }
    
    
}

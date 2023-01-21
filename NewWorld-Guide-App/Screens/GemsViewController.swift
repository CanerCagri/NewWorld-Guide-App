//
//  GemsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit


class GemsViewController: UIViewController {
    
    enum Section {
        case main
    }
    
    // MARK: Properties
    
    var isSearching = false
    var gems = GemMockData.mockdata
    var filteredGems: [GemModel] = []
    
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource <Section, GemModel>!
    let searchController = UISearchController()
    
    // MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureSearchController()
        configureCollectionView()
        configureDataSource()
        updateData(gems: gems)
    }
    
    // MARK: Functions
    func configureViewController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = titles.gems
        navigationItem.hidesSearchBarWhenScrolling = false
    }
    
    func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = Constants.gemPlaceHolder
        searchController.obscuresBackgroundDuringPresentation = false
        navigationItem.searchController = searchController
    }
    
    func configureCollectionView() {
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: UIHelper.createFourColumnFlowLayout(view: view))
        view.addSubview(collectionView)
        
        collectionView.backgroundColor = .systemBackground
        collectionView.register(GemsCollectionViewCell.self, forCellWithReuseIdentifier: reuseID.gemsCollectionViewCell)
    }
    
    func configureDataSource() {
        dataSource = UICollectionViewDiffableDataSource<Section, GemModel>(collectionView: collectionView, cellProvider: { collectionView, indexPath, gem in
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseID.gemsCollectionViewCell, for: indexPath) as! GemsCollectionViewCell
            cell.set(gem: gem)
            cell.addShadow()
            return cell
        })
    }
    
    func updateData(gems: [GemModel]) {
        var snapShot = NSDiffableDataSourceSnapshot<Section, GemModel>()
        snapShot.appendSections([.main])
        snapShot.appendItems(gems)
        
        dataSource.apply(snapShot, animatingDifferences: true)
    }
}

extension GemsViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let filter = searchController.searchBar.text, !filter.isEmpty else {
            filteredGems.removeAll()
            isSearching = false
            updateData(gems: gems)
            return
        }
        
        isSearching = true
        filteredGems = gems.filter { $0.name.lowercased().contains(filter.lowercased()) }
        updateData(gems: filteredGems)
    }
}

//
//  GemsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit


class GemsViewController: UIViewController {

    // MARK: Properties
    var collectionView: UICollectionView!
    var dataSource: UICollectionViewDiffableDataSource <Section, GemModel>!
    
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
        navigationItem.title = titles.gems
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
            return cell
        })
    }
    
    func updateData() {
        var snapShot = NSDiffableDataSourceSnapshot<Section, GemModel>()
        snapShot.appendSections([.main])
        snapShot.appendItems(GemMockData.mockdata)
        
        dataSource.apply(snapShot, animatingDifferences: true)
    }
}

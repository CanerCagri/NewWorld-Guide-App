//
//  DungeonsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import UIKit


class DungeonsViewController: UIViewController {
    
    // MARK: Views
    
    let tableView = UITableView()
    let searchController = UISearchController()
    var dungeons = DungeonMockData.mockData
    var filteredDungeons: [DungeonModel] = []
    
    // MARK: Lifecycle Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureSearchController()
        configureTableView()
    }
    
    // MARK: Functions
    func configureViewController() {
        navigationController?.navigationBar.prefersLargeTitles = true
        view.backgroundColor = .systemBackground
        title = titles.dungeons
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
        tableView.frame = view.bounds
        tableView.rowHeight = 88
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DungeonsTableViewCell.self, forCellReuseIdentifier: reuseID.dungeonsTableViewCell)
    }
    
    func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = Constants.dungeonPlaceHolder
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.sizeToFit()
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchController
    }
}

// MARK: Tableview Methods

extension DungeonsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dungeons.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseID.dungeonsTableViewCell) as! DungeonsTableViewCell
   
        cell.set(dungeon: dungeons[indexPath.row])
        return cell
    }
}

extension DungeonsViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let filter = searchController.searchBar.text, !filter.isEmpty else {
            filteredDungeons.removeAll()
            dungeons = DungeonMockData.mockData
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            return
        }
        dungeons = DungeonMockData.mockData
        filteredDungeons = dungeons.filter { $0.name.lowercased().contains(filter.lowercased()) }
        dungeons = filteredDungeons
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

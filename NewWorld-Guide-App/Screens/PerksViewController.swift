//
//  PerksViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 20.09.2022.
//

import UIKit


class PerksViewController: UIViewController {
    
    // MARK: Properties
    let tableView = UITableView()
    let searchController = UISearchController()
    var perks = PerkMockData.mockdata
    
    // MARK: Lifecycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureSearchController()
        configureTableView()
    }
    
    // MARK: Functioins
    func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Perks"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
        tableView.frame = view.bounds
        tableView.rowHeight = 70
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(PerksTableViewCell.self, forCellReuseIdentifier: PerksTableViewCell.reuseID)
    }
    
    func configureSearchController() {
        searchController.searchResultsUpdater = self
        searchController.searchBar.placeholder = "Search for a perkname"
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.sizeToFit()
        definesPresentationContext = true
        navigationItem.hidesSearchBarWhenScrolling = false
        navigationItem.searchController = searchController
    }
}

// MARK: Tableview Methods
extension PerksViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return perks.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PerksTableViewCell.reuseID) as! PerksTableViewCell
        cell.set(perk: perks[indexPath.row])
        return cell
    }
}

// MARK: SearchBar Methods
extension PerksViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        guard let filter = searchController.searchBar.text, !filter.isEmpty else {
            perks = PerkMockData.mockdata
            DispatchQueue.main.async {
                self.tableView.reloadData()
            }
            return
        }
        perks = perks.filter { $0.name.lowercased().contains(filter.lowercased()) }
        
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}

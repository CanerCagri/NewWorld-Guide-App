//
//  DungeonsViewController.swift
//  NewWorld-Guide-App
//
//  Created by Caner Çağrı on 8.09.2022.
//

import UIKit


class DungeonsViewController: UIViewController {
    
    let tableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewController()
        configureTableView()
    }
    
    func configureViewController() {
        view.backgroundColor = .systemBackground
        title = "Dungeons"
    }
    
    func configureTableView() {
        view.addSubview(tableView)
        
        tableView.frame = view.bounds
        tableView.rowHeight = 88
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(DungeonsTableViewCell.self, forCellReuseIdentifier: DungeonsTableViewCell.reuseID)
    }
}

extension DungeonsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return DungeonMockData.mockData.count
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DungeonsTableViewCell.reuseID) as! DungeonsTableViewCell
        let dungeon = DungeonMockData.mockData[indexPath.row]
        cell.set(dungeon: dungeon)
        return cell
    }
}

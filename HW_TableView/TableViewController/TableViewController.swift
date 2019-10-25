//
//  TableViewController.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    
    let tableView = UITableView(frame: .zero, style: .grouped)
    let dataSource = DataSource()
    let detailVC = DetailVC()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = "Table"
        navigationController?.navigationBar.prefersLargeTitles = true

        tableView.register(TableViewCell.self, forCellReuseIdentifier: TableViewCell.reusedId)
        updateLayout(with: view.frame.size)
    }
    
    private func updateLayout(with size: CGSize) {
        tableView.frame = CGRect.init(origin: .zero, size: size)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        view.addSubview(tableView)
        tableView.dataSource = dataSource
        tableView.delegate = dataSource
        dataSource.delegate = self
    }
}

extension TableViewController: NavigationDelegate {
    func getNavController(title: String, controller: DetailVC) {
        controller.data = title
        self.navigationController?.pushViewController(controller, animated: false)
    }
}

//
//  DataSource.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class DataSource: NSObject, UITableViewDataSource, UITableViewDelegate {
    
    private var titels = [["Sign in to your iPhone"], ["General", "Privacy"], ["Password and Accounts"], ["Maps", "Safari", "News", "Siri", "Photos", "Game Center"], ["Developer"]]
    private var images = [["person"], ["settings","privacy"], ["password"], ["maps", "safari", "news", "siri", "photo", "game"], ["developer"]]
    private let sections = 5
    
    var delegate: NavigationDelegate?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titels[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailVC", for: indexPath) as! TableViewCell
        if indexPath.section == 0 {
//            cell.detailTextLabel?.text = "titels[indexPath.section][indexPath.row]"
            cell.subtitle.text = "titels[indexPath.section][indexPath.row]"
        }
        cell.titleText.text = titels[indexPath.section][indexPath.row]
        cell.mainImage.image = UIImage(named: images[indexPath.section][indexPath.row])
//        cell.textLabel?.text = titels[indexPath.section][indexPath.row]
//        cell.imageView?.image = UIImage(named: images[indexPath.section][indexPath.row])
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = titels[indexPath.section][indexPath.row]
        let detailVC = DetailVC()
        delegate?.getNavController(title: selectedRow, controller: detailVC)
    }
}



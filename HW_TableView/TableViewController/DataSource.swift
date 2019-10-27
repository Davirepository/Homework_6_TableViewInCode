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
    private var subTitle = ["Set up iCloud, the App Store, and more"]
    private let sections = 5
    private let heightOfCell: CGFloat = 60
    private let detailVC = DetailVC()
    
    var delegate: NavigationDelegate?
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titels[section].count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "DetailVCSolo", for: indexPath) as! TableViewCellUsuall
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "DetailVC", for: indexPath) as! TableViewCell
            cell.subtitle.text = subTitle[indexPath.section]
            cell.titleText.text = titels[indexPath.section][indexPath.row]
            cell.titleText.numberOfLines = 0
            cell.mainImage.image = UIImage(named: images[indexPath.section][indexPath.row])
            return cell
        }
        cell.titleText.text = titels[indexPath.section][indexPath.row]
        cell.titleText.numberOfLines = 0
        cell.mainImage.image = UIImage(named: images[indexPath.section][indexPath.row])
        
        return cell
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return heightOfCell
//    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedRow = titels[indexPath.section][indexPath.row]
        
        //push data to detailVC
        delegate?.getNavController(title: selectedRow, indexPath: indexPath, controller: detailVC)
        
        //get data from detailVC
        detailVC.delegate = self
    
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension DataSource: ChangeValue {
    func changeValue(newValue: String, indexPath: IndexPath) {
        let indexPath = indexPath
        titels[indexPath.section][indexPath.row] = newValue
        //print(titels)
    }
}



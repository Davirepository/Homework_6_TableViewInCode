//
//  Protocols.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation

protocol NavigationDelegate {
    func getNavController(title: String, indexPath: IndexPath, controller: DetailVC)
}

protocol ChangeValue {
    func changeValue(newValue: String, indexPath: IndexPath)
}

//protocol AnchorsImageTitle {
//    func anchorImage()
//    func anchorTitle()
//}

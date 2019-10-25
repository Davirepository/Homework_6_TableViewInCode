//
//  Protocols.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import Foundation

protocol NavigationDelegate {
    func getNavController(title: String, controller: DetailVC)
}

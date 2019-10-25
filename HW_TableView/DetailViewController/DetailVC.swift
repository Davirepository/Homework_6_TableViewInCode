//
//  DetailVC.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    let textField: UITextField = {
        let text = UITextField()
        text.frame = CGRect(x: 30, y: 300, width: 80, height: 50)
        return text
    }()
    
    var data: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(textField)
        textField.placeholder = data
    }
}

//
//  DetailVC.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

class DetailVC: UIViewController {
    
    var data: String?
    var indexPath: IndexPath?
    var delegate: ChangeValue?
    
    let textField: UITextField = {
        let text = UITextField()
        text.font = UIFont.boldSystemFont(ofSize: 16)
        text.frame = CGRect(x: 50, y: 150, width: 250, height: 50)
        text.addTarget(self, action: #selector(getNewValue), for: .editingChanged)
        return text
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .yellow
        textField.backgroundColor = .white
        view.addSubview(textField)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        textField.text = data
    }
    
    @objc func getNewValue() {
        if let newValue = textField.text {
            delegate?.changeValue(newValue: newValue, indexPath: indexPath!)
        } else {
            delegate?.changeValue(newValue: "", indexPath: indexPath!)
        }
    }
    
}

//
//  TableViewCell.swift
//  HW_TableView
//
//  Created by Давид on 24/10/2019.
//  Copyright © 2019 David. All rights reserved.
//

import UIKit

final class TableViewCell: UITableViewCell {
    static let reusedId = "DetailVC"
    
    let titleText: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: 16)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let subtitle: UILabel = {
        let label = UILabel()
        label.textColor = .gray
        label.font = UIFont.boldSystemFont(ofSize: 11)
        label.numberOfLines = 0
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let mainImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(mainImage)
        addSubview(titleText)
        addSubview(subtitle)
        
        mainImage.topAnchor.constraint(equalTo: topAnchor, constant: 5).isActive = true
        mainImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5).isActive = true
        mainImage.heightAnchor.constraint(equalToConstant: 50).isActive = true
        mainImage.widthAnchor.constraint(equalTo: mainImage.heightAnchor).isActive = true
        
        titleText.topAnchor.constraint(equalTo: topAnchor, constant: 18).isActive = true
        titleText.leadingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 15).isActive = true
        titleText.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        
        subtitle.topAnchor.constraint(equalTo: titleText.bottomAnchor, constant: 5).isActive = true
        subtitle.leadingAnchor.constraint(equalTo: mainImage.trailingAnchor, constant: 15).isActive = true
        subtitle.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -10)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
//        self.accessoryType = .none
        mainImage.image = nil
    }
    
}

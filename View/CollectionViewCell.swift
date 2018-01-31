//
//  CollectionViewCell.swift
//  test_project
//
//  Created by PhamDucDuong on 1/26/18.
//  Copyright © 2018 PhamDucDuong. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var itemImageCell: UIImageView! {
        didSet {
            itemImageCell.layer.cornerRadius = itemImageCell.frame.width * 0.5
            itemImageCell.layer.borderColor = UIColor.brown.cgColor
            itemImageCell.layer.borderWidth = 2
            itemImageCell.clipsToBounds = true
        }
    }
    
    @IBOutlet weak var itemNameCell: UILabel!
    @IBOutlet weak var itemJobCell: UILabel!
    
    var user: UserModel? {
        didSet {
            itemImageCell.image = user?.userImage ?? UIImage()
            itemNameCell.text = user?.userName ?? ""
            itemJobCell.text = user?.userJob ?? ""
        }
    }
    
    override func prepareForReuse() {
        user = nil
    }
}

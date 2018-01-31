//
//  ViewController.swift
//  test_project
//
//  Created by PhamDucDuong on 1/26/18.
//  Copyright © 2018 PhamDucDuong. All rights reserved.
//

import UIKit

private let reuseIdentifier = "Cell"

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
 
    @IBOutlet weak var collectionView: UICollectionView!
    
    let numberOfItemInRow: CGFloat = 2
    let padding: CGFloat = 11
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tinh khoang cach giua cac itemViewCell
        let itemWidth = (UIScreen.main.bounds.width - padding * 4 - (numberOfItemInRow - 1) * padding) / numberOfItemInRow
        
        
        let layout = collectionView.collectionViewLayout as! UICollectionViewFlowLayout
        
        layout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        
        layout.sectionInset = UIEdgeInsets(top: padding, left: padding * 2, bottom: padding, right: padding * 2)
        layout.minimumLineSpacing = padding
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Register cell classes
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        
        // Do any additional setup after loading the view.
    }

    // MARK: UICollectionViewDataSource
    
     func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return DataStore.shared.user.count
    }
    
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "itemContainerCell", for: indexPath) as! CollectionViewCell
        
        // Configure the cell
        let user = DataStore.shared.user[indexPath.row]
        cell.user = user
        return cell
    }


}


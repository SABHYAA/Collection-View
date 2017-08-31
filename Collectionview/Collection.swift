//
//  Collection.swift
//  Collectionview
//
//  Created by appinventiv on 31/08/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit
// Collectionview Lifecycle
class Collection: UIViewController {

    @IBOutlet var Collectionview: UICollectionView!
    var pictures = ["1", "2", "3", "4", "5"]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.Collectionview.dataSource = self
        self.Collectionview.delegate = self
        
    }

}
// number of views
extension Collection : UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pictures.count
    }
    // populated views
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = Collectionview.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as? Customcell
            else{
                fatalError()
    }
        cell.scenesImageView.image = UIImage(named: pictures[indexPath.row])
    
        return cell
    }
}
        
class Customcell : UICollectionViewCell {
        
        @IBOutlet var scenesImageView: UIImageView!
        
}

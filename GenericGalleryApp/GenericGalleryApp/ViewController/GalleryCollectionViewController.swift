//
//  GalleryCollectionViewController.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 06.05.2021.
//

import UIKit

class GalleryCollectionViewController: UICollectionViewController {

    let itemsPerRow: CGFloat = 3
    let sectionInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Navigation


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCellIdentifier", for: indexPath) as! GalleryCollectionViewCell
        cell.backgroundColor = .black
        return cell
    }

}



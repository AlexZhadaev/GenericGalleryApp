//
//  GalleryCollectionViewController.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 06.05.2021.
//

import UIKit

class GalleryCollectionViewController: UICollectionViewController {
    
    let photos = ["IMG_1s", "IMG_2s", "IMG_3s", "IMG_4s", "IMG_5s", "IMG_6s", "IMG_7s", "IMG_8s", "IMG_9s", "IMG_10s", "IMG_11s", "IMG_12s", "IMG_13s", "IMG_14s", "IMG_15s", "IMG_16s", "IMG_17s", "IMG_18s", "IMG_19s", "IMG_20s", "IMG_21s", "IMG_22s"]
//    let photos = ["IMG_1", "IMG_2", "IMG_3", "IMG_4", "IMG_5", "IMG_6", "IMG_7", "IMG_8", "IMG_9", "IMG_10", "IMG_11", "IMG_12", "IMG_13", "IMG_14", "IMG_15", "IMG_16", "IMG_17", "IMG_18", "IMG_19", "IMG_20", "IMG_21", "IMG_22"]
    let itemsPerRow: CGFloat = 3
    let sectionInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = .zero
    }
    
    // MARK: - Navigation


    // MARK: UICollectionViewDataSource

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCellIdentifier", for: indexPath) as! GalleryCollectionViewCell
        let imageString = photos[indexPath.item]
        let image = UIImage(named: imageString)!
        cell.prepare(for: image)
        return cell
    }

}


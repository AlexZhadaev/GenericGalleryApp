//
//  GalleryCollectionViewController.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 06.05.2021.
//

import UIKit

class GalleryCollectionViewController: UICollectionViewController {
    
    let photos = ["IMG_1", "IMG_2", "IMG_3", "IMG_4", "IMG_5", "IMG_6", "IMG_7", "IMG_8", "IMG_9", "IMG_10", "IMG_11", "IMG_12", "IMG_13", "IMG_14", "IMG_15", "IMG_16", "IMG_17", "IMG_18", "IMG_19", "IMG_20", "IMG_21", "IMG_22"]
    let sectionInsets = UIEdgeInsets(top: 20, left: 20, bottom: 20, right: 20)
    var itemsPerRow: CGFloat = 2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        estimatedItemSizeOff()
        itemsPerRowCalculate()
    }
    
    // MARK: - Navigation
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "selectedImageSegueIdentifier" {
            let destinationViewController = segue.destination as! SelectedImageViewController
            let cell = sender as! GalleryCollectionViewCell
            destinationViewController.image = cell.photoImageView.image
        }
    }
    
    // MARK: UICollectionViewDataSource
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photos.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "galleryCellIdentifier", for: indexPath) as! GalleryCollectionViewCell
        cell.activityIndicatorPrepare()
        
        let queue = DispatchQueue.global(qos: .userInteractive)
        queue.async {
            let imageString = self.photos[indexPath.item]
            guard let image = UIImage(named: imageString) else { return }
            DispatchQueue.main.async {
                cell.prepare(for: image)
            }
        }
        
        return cell
    }
    
}


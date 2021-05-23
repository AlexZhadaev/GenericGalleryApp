//
//  GalleryCollectionViewCell.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 12.05.2021.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    fileprivate var image: UIImage? {
        get {
            return photoImageView.image
        }
        set {
            activityIndicator.stopAnimating()
            activityIndicator.isHidden = true
            photoImageView.contentMode = .scaleAspectFill
            photoImageView.clipsToBounds = true
            photoImageView.image = newValue
        }
    }
    
    func activityIndicatorPrepare() {
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    func prepare(for image: UIImage) {
        self.image = image
    }
    
}


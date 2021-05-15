//
//  GalleryCollectionViewCell.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 12.05.2021.
//

import UIKit

class GalleryCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var photoImageView: UIImageView!
    
    func prepare(for image: UIImage) {
        DispatchQueue.main.async {
            self.photoImageView.contentMode = .scaleAspectFill
            self.photoImageView.clipsToBounds = true
            self.photoImageView.image = image
        }
        
    }
    
}


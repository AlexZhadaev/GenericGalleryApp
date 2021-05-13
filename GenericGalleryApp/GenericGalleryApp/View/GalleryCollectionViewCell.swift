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
        photoImageView.image = image
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.clipsToBounds = true
    }
}

//
//  GalleryCollectionLayoutExtension.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 12.05.2021.
//

import UIKit

extension GalleryCollectionViewController: UICollectionViewDelegateFlowLayout {
    
    func itemsPerRowCalculate() {
        switch self.collectionView.frame.width {
        case 0...399:
            itemsPerRow = 2
        case 400...500:
            itemsPerRow = 3
        default:
            itemsPerRow = 4
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let spacingWidth = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = collectionView.frame.width - spacingWidth
        let widthPerItem = (availableWidth / itemsPerRow).rounded(.down)
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    
    func estimatedItemSizeOff() {
        let layout = collectionViewLayout as! UICollectionViewFlowLayout
        layout.estimatedItemSize = .zero
    }
    
}

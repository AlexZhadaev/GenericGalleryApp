//
//  SelectedImageViewController.swift
//  GenericGalleryApp
//
//  Created by Жадаев Алексей on 17.05.2021.
//

import UIKit

class SelectedImageViewController: UIViewController {
    
    var image: UIImage?
    
    @IBOutlet weak var selectedImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        selectedImage.contentMode = .scaleAspectFill
        selectedImage.clipsToBounds = true
        selectedImage.image = image
    }
    
    @IBAction func shareTapped(_ sender: UIButton) {
        guard let sharedImage = image else { return }
        
        let shareController = UIActivityViewController(activityItems: [sharedImage], applicationActivities: nil)
        shareController.completionWithItemsHandler = { _, bool, _, _ in
            if bool {
                debugPrint("Successfully")
            }
        }
        
        present(shareController, animated: true, completion: nil)
    }
    
}

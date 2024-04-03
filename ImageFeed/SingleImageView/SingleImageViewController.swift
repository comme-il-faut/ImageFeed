//
//  SingleImageViewController.swift
//  ImageFeed
//
//  Created by Антон Ровенко on 27.03.2024.
//

import UIKit


final class SingleImageViewController: UIViewController {
    
    var image: UIImage? {
        didSet {
            guard isViewLoaded else { return }
            imageView.image = image
        }
    }
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = image
    }
}

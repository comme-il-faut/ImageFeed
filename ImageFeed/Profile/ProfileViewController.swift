//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Антон Ровенко on 24.03.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var userText: UILabel!
    @IBOutlet weak var logoutButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.setTitle("", for: .normal)
    }
    
    @IBAction func didTapLogoutButton(_ sender: UIButton) {
    }
}

//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Антон Ровенко on 24.03.2024.
//

import UIKit

class ProfileViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prepareScreen()
    }
    
    private func prepareScreen() {
        addPhotoUser()
        addLogoutButton()
        addUserName()
        addUserTag()
        addUserDescription()
    }
    
    private func addPhotoUser(){
        let imageUser = UIImage(named: "UserPhoto.png")
        let userPhoto = UIImageView(image: imageUser)
        userPhoto.translatesAutoresizingMaskIntoConstraints = false
        userPhoto.layer.cornerRadius = userPhoto.frame.size.width / 2
        userPhoto.clipsToBounds = true
        view.addSubview(userPhoto)
        NSLayoutConstraint.activate([
            userPhoto.heightAnchor.constraint(equalToConstant: 70),
            userPhoto.widthAnchor.constraint(equalToConstant: 70),
            userPhoto.topAnchor.constraint(equalTo: view.topAnchor, constant: 76),
            userPhoto.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16)])
    }
    
    private func addLogoutButton(){
        let logoutButton = UIButton.systemButton(
            with: UIImage(named: "exitIcon.png")!,
            target: self,
            action: #selector(Self.didTapLogoutButton))
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        logoutButton.tintColor = UIColor(named: "forLogout")
        view.addSubview(logoutButton)
        NSLayoutConstraint.activate([
            logoutButton.widthAnchor.constraint(equalToConstant: 24),
            logoutButton.heightAnchor.constraint(equalToConstant: 24),
            logoutButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 99),
            logoutButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24)])
    }
    
    @objc private func didTapLogoutButton(){
        print("Tap LogOut")
    }
    
    private func addUserName(){
        let userName = UILabel()
        userName.text = "Екатерина Новикова"
        userName.font = UIFont(name: "SF Pro", size: 18)
        userName.textColor = .white
        userName.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userName)
        
        userName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        userName.topAnchor.constraint(equalTo: view.topAnchor, constant: 154).isActive = true
        userName.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }
    
    private func addUserTag(){
        let userTag = UILabel()
        userTag.text = "@ekaterina_nov"
        userTag.font = UIFont(name: "SF Pro", size: 13)
        userTag.textColor = UIColor(named: "forTag")
        userTag.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(userTag)
        userTag.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        userTag.topAnchor.constraint(equalTo: view.topAnchor, constant: 180).isActive = true
    }
    
    private func addUserDescription(){
        let userDescription = UILabel()
        userDescription.text = "Hello, world!"
        userDescription.font = UIFont(name: "SF Pro", size: 13)
        userDescription.textColor = .white
        userDescription.translatesAutoresizingMaskIntoConstraints = false
        userDescription.numberOfLines = 0
        view.addSubview(userDescription)
        userDescription.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        userDescription.topAnchor.constraint(equalTo: view.topAnchor, constant: 206).isActive = true
        userDescription.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
    }
}

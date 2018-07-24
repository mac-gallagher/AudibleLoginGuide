//
//  HomeController.swift
//  Audible-Login-Guide
//
//  Created by Mac Gallagher on 2/26/18.
//  Copyright © 2018 Mac Gallagher. All rights reserved.
//

import UIKit

class HomeController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "We're logged in"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        let imageView = UIImageView(image: UIImage(named: "home"))
        view.addSubview(imageView)
        _ = imageView.anchor(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
    
    @objc func handleSignOut() {
        UserDefaults.standard.setIsLoggedIn(value: false)
        
        let loginController = LoginController()
        present(loginController, animated: true, completion: nil)
    }
}

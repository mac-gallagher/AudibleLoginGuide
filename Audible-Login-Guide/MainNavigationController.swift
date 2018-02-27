//
//  MainNavigationController.swift
//  Audible-Login-Guide
//
//  Created by Mac Gallagher on 2/26/18.
//  Copyright © 2018 Mac Gallagher. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn() {
           let homeController = HomeController()
            viewControllers = [homeController]
            
        } else {
                perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
            }
        }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    @objc func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
        })
    }
    
}







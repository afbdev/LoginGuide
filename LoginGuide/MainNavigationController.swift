//
//  MainNavigationController.swift
//  LoginGuide
//
//  Created by afbdev on 1/22/17.
//  Copyright © 2017 afbdev. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        
        
        if isLoggedIn() {
            // Assume user is logged in
            let homeController = HomeController()
            viewControllers = [homeController]
        } else {
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
        
    }
    
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
//        return UserDefaults.standard.bool(forKey: "isLoggedIn")
    }
    
    func showLoginController() {
        let loginController = LoginController()
        present(loginController, animated: true, completion: {
            // perhaps do something here later
        })
    }
}




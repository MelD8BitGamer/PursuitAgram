//
//  ViewController.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/3/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit



class LoginViewController: UIViewController {

    public var loginView = LoginView()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }


}


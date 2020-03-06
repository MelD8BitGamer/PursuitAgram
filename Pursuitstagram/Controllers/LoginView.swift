//
//  LoginView.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class LoginView: UIView {

    private lazy var infoLabel: UILabel = {
           let label = UILabel()
           return label
       }()
    
    private lazy var containerView: UIView = {
       let view = UIView()
        return view
    }()

    private lazy var pursuitLogo: UIImageView = {
       let imageView = UIImageView()
        return imageView
    }()
    
    private lazy var emailTextField: UITextField = {
       let tf = UITextField()
        return tf
    }()
    
    private lazy var passwordTextField: UITextField = {
       let tf = UITextField()
        return tf
    }()
    private lazy var loginButton: UIButton = {
       let button = UIButton()
        return button
    }()
}

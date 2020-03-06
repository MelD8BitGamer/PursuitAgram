//
//  LoginView.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class LoginView: UIView {
    //TODO: Fix UI constraints
    private lazy var containerView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "GreyGradient")
        view.backgroundColor = .systemPink
        return view
    }()
    
    private lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        label.text = "Pursuit"
        label.textColor = .systemRed
        label.backgroundColor = .systemBackground
        return label
    }()
    
//    private lazy var popUpView: UIView = {
//        let view = UIView()
//        return view
//    }()
    
    private lazy var pursuitLogo: UIImageView = {
        let iV = UIImageView()
        iV.image = UIImage(named: "pursuit-logo")
        iV.contentMode = .scaleAspectFit
        return iV
    }()
    
    private lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        tf.placeholder = "email"
        tf.backgroundColor = .systemBackground
        return tf
    }()
    
    private lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        tf.placeholder = "password"
        tf.backgroundColor = .systemBackground
        return tf
    }()
    
    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "LOGIN"
        button.titleLabel?.textColor = .white
        button.titleColor(for: .normal)
        button.showsTouchWhenHighlighted = true
        button.backgroundColor = .systemGray
        return button
    }()
    
    private lazy var stackView: UIStackView = {
        let sv = UIStackView()
        return sv
    }()
    
    private lazy var accountStateMessage: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        label.numberOfLines = 0
        label.text = "Don't have an Account? Click "
        label.backgroundColor = .systemBackground
        return label
    }()
    
    private lazy var accountStateButton: UIButton = {
        let button = UIButton()
        button.titleLabel?.text = "SIGN UP"
        button.titleLabel?.textColor = .systemRed
        button.backgroundColor = .systemBackground
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        setUpInfoLabelConstraints()
        setupContainerView()
        setUpPursuitLogoView()
        setUpEmailTFConstraints()
        setUpPasswordTFConstraints()
        setUpLoginButtonConstraints() 
        setUpStackViewConstraints()
        setUpAccountStateMessageConstraints()
        setupAccountStatButtonConstraints()
    }
    
    private func setUpInfoLabelConstraints() {
        addSubview(infoLabel)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            infoLabel.bottomAnchor.constraint(equalTo :containerView.topAnchor),
            infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            infoLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            infoLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    private func setupContainerView() {
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: infoLabel.bottomAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 1.7)
        ])
    }
    
    private func setUpPursuitLogoView() {
        containerView.addSubview(pursuitLogo)
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pursuitLogo.topAnchor.constraint(equalTo: containerView.topAnchor),
            pursuitLogo.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            pursuitLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            pursuitLogo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200),
            pursuitLogo.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 8)
        ])
    }
    
    private func setUpEmailTFConstraints() {
        containerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: pursuitLogo.bottomAnchor, constant: 60),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    
    private func setUpPasswordTFConstraints() {
        containerView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo:emailTextField.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    private func setUpLoginButtonConstraints() {
        containerView.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            loginButton.bottomAnchor.constraint(equalTo: stackView.topAnchor, constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setUpStackViewConstraints() {
        containerView.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
    
    private func setUpAccountStateMessageConstraints() {
        stackView.addSubview(accountStateMessage)
        accountStateMessage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            accountStateMessage.topAnchor.constraint(equalTo: stackView.topAnchor),
            accountStateMessage.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 8),
            accountStateMessage.trailingAnchor.constraint(equalTo: accountStateButton.leadingAnchor, constant: -8),
            accountStateMessage.bottomAnchor.constraint(equalTo: stackView.bottomAnchor)
        ])
    }
    
    private func setupAccountStatButtonConstraints() {
        stackView.addSubview(accountStateButton)
        accountStateButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            accountStateButton.topAnchor.constraint(equalTo: stackView.topAnchor),
            accountStateButton.leadingAnchor.constraint(equalTo: accountStateMessage.trailingAnchor),
            accountStateButton.trailingAnchor.constraint(equalTo: stackView.trailingAnchor, constant: -8)
        ])
    }
}

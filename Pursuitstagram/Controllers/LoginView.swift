//
//  LoginView.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class LoginView: UIView {
    
    //TODO: Fix stackview constraints
    public lazy var containerView: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "GreyGradient")
        view.backgroundColor = .systemPink
        return view
    }()
    
    public lazy var infoLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue-Bold", size: 14)
        label.text = "Is this your first time? Create an account below"
        label.textAlignment = .center
        label.textColor = .systemRed
        label.backgroundColor = .clear
        return label
    }()
    
    public lazy var pursuitAgramLabel: UILabel = {
           let label = UILabel()
           label.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        label.attributedText = FormattedString.turnMyTextIntoColorText("PURSUITAGRAM")
           label.textAlignment = .center
          // label.textColor = #colorLiteral(red: 0.1179727539, green: 0.03814018518, blue: 0.7834613919, alpha: 1)
           label.backgroundColor = .clear
           return label
       }()
    
    public lazy var pursuitLogo: UIImageView = {
        let iV = UIImageView()
        iV.image = UIImage(named: "pursuit-logo")
        iV.contentMode = .scaleAspectFit
        return iV
    }()
    
    public lazy var emailTextField: UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        tf.placeholder = "email"
        tf.backgroundColor = .systemBackground
        tf.layer.cornerRadius = 5.0
        return tf
    }()
    
    public lazy var passwordTextField: UITextField = {
        let tf = UITextField()
        tf.font = UIFont(name: "HelveticaNeue-Bold", size: 18)
        tf.placeholder = "password"
        tf.backgroundColor = .systemBackground
        tf.layer.cornerRadius = 5.0
        return tf
    }()
    
    public lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("LOGIN", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 25)
        button.titleLabel?.textAlignment = .center
        button.titleLabel?.textColor = .white
        button.showsTouchWhenHighlighted = true
        button.layer.cornerRadius = 7.0
        button.backgroundColor = .systemOrange
        return button
    }()
    
    public lazy var stackView: UIStackView = {
        let sv = UIStackView()
        //when dealing with stackViews you need to know which way the stack view is going and the distribution
        sv.axis = .horizontal
        sv.distribution = .fill
        sv.spacing = 7
        return sv
    }()
    
    public lazy var accountStateMessage: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "HelveticaNeue", size: 14)
        label.numberOfLines = 0
        label.text = "Don't have an Account? Click sign up"
        label.textColor = .systemOrange
        label.backgroundColor = .systemBackground
        label.layer.cornerRadius = 7.0
        return label
    }()
    
    public lazy var accountStateButton: UIButton = {
        let button = UIButton()
        button.setTitle("SignUp", for: .normal)
        button.titleLabel?.font = UIFont(name: "HelveticaNeue-Bold", size: 15)
        button.titleLabel?.textAlignment = .left
        //button.titleLabel?.textColor = .systemBackground
        button.backgroundColor = .systemBackground
        button.setTitleColor(.systemOrange, for: .normal)
        button.layer.cornerRadius = 7.0
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
        setupContainerView()
        setUpInfoLabelConstraints()
        setUpPursuitAgramLabelConstraints()
        setUpPursuitLogoView()
        setUpEmailTFConstraints()
        setUpPasswordTFConstraints()
        setUpLoginButtonConstraints() 
        setUpStackViewConstraints()
        //setUpAccountStateMessageConstraints()
        //setupAccountStatButtonConstraints()
    }
    
    private func setUpInfoLabelConstraints() {
        containerView.addSubview(infoLabel)
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor,constant: 8),
            infoLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            infoLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            //infoLabel.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    private func setupContainerView() {
        addSubview(containerView)
        containerView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
           // containerView.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 1.7)
        ])
    }
    private func setUpPursuitAgramLabelConstraints() {
        containerView.addSubview(pursuitAgramLabel)
        pursuitAgramLabel.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            pursuitAgramLabel.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 40),
            pursuitAgramLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            pursuitAgramLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        
        ])
    }
    
    private func setUpPursuitLogoView() {
        containerView.addSubview(pursuitLogo)
        pursuitLogo.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            pursuitLogo.topAnchor.constraint(equalTo: pursuitAgramLabel.bottomAnchor),
           // pursuitLogo.bottomAnchor.constraint(equalTo: bottomAnchor),
            pursuitLogo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 150),
            pursuitLogo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -150),
            pursuitLogo.heightAnchor.constraint(equalToConstant: UIScreen.main.bounds.height / 4)
        ])
    }
    
    private func setUpEmailTFConstraints() {
        containerView.addSubview(emailTextField)
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            emailTextField.topAnchor.constraint(equalTo: pursuitLogo.bottomAnchor, constant: 40),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    
    private func setUpPasswordTFConstraints() {
        containerView.addSubview(passwordTextField)
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordTextField.topAnchor.constraint(equalTo:emailTextField.bottomAnchor, constant: 20),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40)
        ])
    }
    private func setUpLoginButtonConstraints() {
        containerView.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            loginButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            loginButton.heightAnchor.constraint(equalToConstant: 60)
        ])
    }
    
    private func setUpStackViewConstraints() {
        containerView.addSubview(stackView)
        stackView.addArrangedSubview(accountStateMessage)
        stackView.addArrangedSubview(accountStateButton)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 40),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -40),
            stackView.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
}


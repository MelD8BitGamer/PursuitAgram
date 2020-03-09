//
//  ViewController.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/3/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

enum AccountState {
  case existingUser
  case newUser
}

class LoginViewController: UIViewController {

    public var loginView = LoginView()
    private var accountState: AccountState = .existingUser
    private var authSession = AuthenticationSession()
    
    override func loadView() {
        view = loginView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @objc public func loginButtonPressed(_ sender: UIButton){
         print("login button pressed")
         //this is so
        guard let email = loginView.emailTextField.text,
             !email.isEmpty,
            let password = loginView.passwordTextField.text,
             !password.isEmpty else {
                //TODO: ShowAlert!!
               print("missing fields")
               return
           }
           continueLoginFlow(email: email, password: password)
     }
    //Finish ContinueFlowLogin
    private func continueLoginFlow(email: String, password: String) {
        if accountState == .existingUser {
       authSession.signExistingUser(email: email, password: password) { [weak self] (result) in
                  switch result {
                  case .failure(let error):
                    DispatchQueue.main.async {
                        //it will be a full out readable decription of the error
                 
                      self?.errorLabel.text = "\(error.localizedDescription)"
                      self?.errorLabel.textColor = .systemRed
                    }
                  case .success:
                    DispatchQueue.main.async {
                            //MARK: 11:46ama
                         self?.errorLabel.text = "Welcome Back user "
                      self?.navigateToMainView()
                    }
                  }
                }
              } else {
                authSession.createNewUser(email: email, password: password) { [weak self] (result) in
                  switch result {
                  case .failure(let error):
                    DispatchQueue.main.async {
                        //it will be a full out readable decription of the error
                      self?.errorLabel.text = "\(error.localizedDescription)"
                      self?.errorLabel.textColor = .systemRed
                    }
                  case .success:
                    DispatchQueue.main.async {
                      self?.navigateToMainView()
                    }
                  }
                }
              }
            }
    
    private func navigateToMainView() {
        UIViewController.
     }
}



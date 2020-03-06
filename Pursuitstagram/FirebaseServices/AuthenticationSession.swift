//
//  AuthenticationSession.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import Foundation
import FirebaseAuth

class AuthenticationSession {
    //app passwords are encrypted which Firebase is takes care of and we don't ever see the password on our end
  public func createNewUser(email: String, password: String, completion: @escaping (Result<AuthDataResult, Error>) -> ()) {
    Auth.auth().createUser(withEmail: email, password: password) { (authDataResult, error) in
      if let error = error {
        completion(.failure(error))
      } else if let authDataResult = authDataResult {
        completion(.success(authDataResult))
      }
    }
  }
  
  public func signExistingUser(email: String, password: String, completion: @escaping (Result<AuthDataResult, Error>) -> ()) {
    Auth.auth().signIn(withEmail: email, password: password) { (authDataResult, error) in
      if let error = error {
        completion(.failure(error))
      } else if let authDataResult = authDataResult {
        completion(.success(authDataResult))
      }
    }
  }
  
}


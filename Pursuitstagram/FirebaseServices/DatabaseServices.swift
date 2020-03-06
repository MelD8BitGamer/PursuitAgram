//
//  DatabaseServices.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import Foundation
import FirebaseFirestore
import FirebaseAuth

class DatabaseService {

  //TODO: Create a function that will create a photo that can accept a textField name and textfield description
    
  static let  itemsCollection = "items" //collection
  //lets get a reference to the fire base fire store database so that we can start writing to it. db means database
  private let db = Firestore.firestore()

//  public func createItem(itemName: String, price: Double, category: Category, displayName: String, completion: @escaping (Result<String, Error>) -> ()) {
//    guard let user = Auth.auth().currentUser else { return }
//}
}

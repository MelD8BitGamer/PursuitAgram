//
//  ViewControllerExtension.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit
//SO these extensions I have access to these methods in the VC AND UIView(IF you have access to the View IN the VC!!!

extension UIViewController {
    
    private static func showViewController(with rootController: UIViewController) {
        let targetVC = UIViewController.targetViewController(rootController)
    
        
        
//  private static func resetWindow(with rootViewController: UIViewController) {
//    guard let scene = UIApplication.shared.connectedScenes.first,
//      let sceneDelegate = scene.delegate as? SceneDelegate,
//      let window = sceneDelegate.window else {
//        fatalError("could not reset window rootViewController")
//    }
//    window.rootViewController = rootViewController
//  }
//
//  public static func showViewController(storyBoardName: String, viewControllerId: String) {
//    let storyboard = UIStoryboard(name: storyBoardName, bundle: nil)
//    let newVC = storyboard.instantiateViewController(identifier: viewControllerId)
//    resetWindow(with: newVC)
//  }
  
}
}

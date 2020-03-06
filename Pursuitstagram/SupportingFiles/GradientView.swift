//
//  GradientView.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {
  @IBInspectable var cornerRadius: CGFloat = 0
  
  override func layoutSubviews() {
    super.layoutSubviews()
    layer.masksToBounds = true
    layer.cornerRadius = cornerRadius
    let gradientLayer = CAGradientLayer()
    let colors = [UIColor.systemBackground.cgColor, UIColor.systemRed.cgColor]
    gradientLayer.frame = bounds
    gradientLayer.colors = colors
    layer.addSublayer(gradientLayer)
  }
}

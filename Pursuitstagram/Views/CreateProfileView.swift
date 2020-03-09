//
//  CreateProfileView.swift
//  Pursuitstagram
//
//  Created by Melinda Diaz on 3/6/20.
//  Copyright © 2020 Melinda Diaz. All rights reserved.
//

import UIKit

class CreateProfileView: UIView {

    public lazy var profilePicture: UIImageView = {
       let pP = UIImageView()
        pP.image = UIImage(named: "")
        return pP
    }()
    public lazy var editButton: UIButton = {
       let button = UIButton()
        return button
    }()
    
    public lazy var editPictureButton: UIButton = {
        let button = UIButton()
        return button
    }()
    
    public lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
 
    public lazy var emailLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    public lazy var pictureCountLabel: UILabel = {
        let label = UILabel()
            return label
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
            
        }
    
    private func setUpProfilePictureConstraints() {
        addSubview(profilePicture)
        profilePicture.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            profilePicture.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 40),
            profilePicture.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 200),
            profilePicture.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -200),
            profilePicture.heightAnchor.constraint(equalToConstant: 200)
        ])
    }
    
    private func setUpEditButtonConstraints() {
        addSubview(editButton)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            editButton.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            editButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 500),
            editButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            editButton.heightAnchor.constraint(equalToConstant: 40)
        ])
    }
    
    private func setUpeditProfilePicConstraints() {
        addSubview(editPictureButton)
        editPictureButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            editPictureButton.topAnchor.constraint(equalTo: profilePicture.topAnchor),
            editPictureButton.leadingAnchor.constraint(equalTo: profilePicture.trailingAnchor, constant: 5),
            editPictureButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -190)
        ])
    }
   
}

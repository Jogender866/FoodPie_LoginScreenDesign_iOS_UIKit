//
//  AstrotalkSignUpVC+CustomMethods.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 21/03/24.
//

import Foundation
import UIKit
// MARK: - CREATING EXTENSION OF SIGNUP
extension AstrotalkSignUpVC{
    internal func initialSetup(){
        self.BGView1.layer.cornerRadius = 10.0
        self.BGView2.layer.cornerRadius = 10.0
        
        self.firstNameView.layer.cornerRadius = self.firstNameView.frame.height/2.0
        self.firstNameView.layer.borderWidth = 1.2
        self.firstNameView.layer.borderColor = #colorLiteral(red: 0.8033260107, green: 0.4617853761, blue: 0.02450504713, alpha: 1).cgColor
        self.firstNameImageView.layer.cornerRadius = self.firstNameImageView.frame.height/2.0
        
        self.lastNameView.layer.cornerRadius = self.lastNameView.frame.height/2.0
        self.lastNameView.layer.borderWidth = 1.2
        self.lastNameView.layer.borderColor = #colorLiteral(red: 0.8033260107, green: 0.4617853761, blue: 0.02450504713, alpha: 1).cgColor
        self.lastNameImageView.layer.cornerRadius = self.lastNameImageView.frame.height/2.0
        
        self.emailIdView.layer.cornerRadius = self.emailIdView.frame.height/2.0
        self.emailIdView.layer.borderWidth = 1.2
        self.emailIdView.layer.borderColor = #colorLiteral(red: 0.8033260107, green: 0.4617853761, blue: 0.02450504713, alpha: 1).cgColor
        self.emailIDImageView.layer.cornerRadius = self.emailIDImageView.frame.height/2.0
        
        self.phoneView.layer.cornerRadius = self.phoneView.frame.height/2.0
        self.phoneView.layer.borderWidth = 1.2
        self.phoneView.layer.borderColor = #colorLiteral(red: 0.8033260107, green: 0.4617853761, blue: 0.02450504713, alpha: 1).cgColor
        self.phoneImageView.layer.cornerRadius = self.phoneImageView.frame.height/2.0
        
        signUpButton_Ref.layer.cornerRadius = signUpButton_Ref.frame.height/2.0
        signUpButton_Ref.layer.shadowColor = UIColor.black.cgColor
        signUpButton_Ref.layer.shadowOpacity = 0.5
        signUpButton_Ref.layer.shadowOffset = CGSize(width: 0, height: 2)
        signUpButton_Ref.layer.shadowRadius = 3.0
        
        self.fbView.layer.cornerRadius = self.fbView.frame.height/2.0
        self.fbView.layer.borderWidth = 1.2
        self.fbView.layer.borderColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
        self.fbImageView.layer.cornerRadius = self.fbImageView.frame.height/2.0
        
        self.gView.layer.cornerRadius = self.gView.frame.height/2.0
        self.gView.layer.borderWidth = 1.2
        self.gView.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).cgColor
        self.gImageView.layer.cornerRadius = self.gImageView.frame.height/2.0
    }
}

//
//  AstrotalkLoginVC+CustomMethods.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 21/03/24.
//

import Foundation
import UIKit
// MARK: - CREATING EXTENSION OF SIGNUP
extension AstrotalkLoginVC{
    internal func initialSetup(){
        
        self.BGView1.layer.cornerRadius = 10.0
        self.BGView2.layer.cornerRadius = 10.0
        
        self.emailIdView.layer.cornerRadius = self.emailIdView.frame.height/2.0
        self.emailIdView.layer.borderWidth = 1.2
        self.emailIdView.layer.borderColor = #colorLiteral(red: 0.8033260107, green: 0.4617853761, blue: 0.02450504713, alpha: 1).cgColor
        self.emailIDImageView.layer.cornerRadius = self.emailIDImageView.frame.height/2.0
        
        self.passwordView.layer.cornerRadius = self.passwordView.frame.height/2.0
        self.passwordView.layer.borderWidth = 1.2
        self.passwordView.layer.borderColor = #colorLiteral(red: 0.8033260107, green: 0.4617853761, blue: 0.02450504713, alpha: 1).cgColor
        self.passwordImageView.layer.cornerRadius = self.passwordImageView.frame.height/2.0
        
        self.fbView.layer.cornerRadius = self.fbView.frame.height/2.0
        self.fbView.layer.borderWidth = 1.2
        self.fbView.layer.borderColor = #colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1).cgColor
        self.fbImageView.layer.cornerRadius = self.fbImageView.frame.height/2.0
        
        self.gView.layer.cornerRadius = self.gView.frame.height/2.0
        self.gView.layer.borderWidth = 1.2
        self.gView.layer.borderColor = #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1).cgColor
        self.gImageView.layer.cornerRadius = self.gImageView.frame.height/2.0
        
        signInButton_Ref.layer.cornerRadius = signInButton_Ref.frame.height/2.0
        signInButton_Ref.layer.shadowColor = UIColor.black.cgColor
        signInButton_Ref.layer.shadowOpacity = 0.5
        signInButton_Ref.layer.shadowOffset = CGSize(width: 0, height: 2)
        signInButton_Ref.layer.shadowRadius = 3.0

    }
}

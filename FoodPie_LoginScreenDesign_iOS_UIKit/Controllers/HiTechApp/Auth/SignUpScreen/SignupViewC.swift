//
//  SignupViewC.swift
//  HiTech_LoginSignUp_Design_iOS_UIKit
//
//  Created by Jogender Singh on 05/03/24.
//

import UIKit

class SignupViewC: UIViewController {

    // MARK: - IBOUTLETS
    @IBOutlet weak var logInButton_Ref: UIButton!
    @IBOutlet weak var facebookView: UIView!
    @IBOutlet weak var FBIconView: UIImageView!
    @IBOutlet weak var googleView: UIView!
    @IBOutlet weak var GoogleIconView: UIImageView!
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
        
        self.logInButton_Ref.layer.cornerRadius = 10.0
        self.facebookView.layer.cornerRadius = 10.0
        self.FBIconView.layer.cornerRadius = self.FBIconView.frame.height/2
        
        self.googleView.layer.cornerRadius = 10.0
        self.GoogleIconView.layer.cornerRadius = self.GoogleIconView.frame.height/2
    }
    
    // MARK: - ACTIONS

}

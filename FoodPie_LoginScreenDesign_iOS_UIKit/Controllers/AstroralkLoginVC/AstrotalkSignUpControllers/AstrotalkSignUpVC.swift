//
//  AstrotalkSignUpVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 21/03/24.
//

import UIKit

class AstrotalkSignUpVC: UIViewController {
    // MARK: - IBOUTLETS
    @IBOutlet weak var BGView1: UIView!
    @IBOutlet weak var BGView2: UIView!
    
    @IBOutlet weak var firstNameView: UIView!
    @IBOutlet weak var firstNameTxtFld: UITextField!
    @IBOutlet weak var firstNameImageView: UIImageView!
    
    @IBOutlet weak var lastNameView: UIView!
    @IBOutlet weak var lastNameTxtFld: UITextField!
    @IBOutlet weak var lastNameImageView: UIImageView!
    
    @IBOutlet weak var emailIdView: UIView!
    @IBOutlet weak var emailIDTxtFld: UITextField!
    @IBOutlet weak var emailIDImageView: UIImageView!
    
    @IBOutlet weak var phoneView: UIView!
    @IBOutlet weak var phoneTxtFld: UITextField!
    @IBOutlet weak var phoneImageView: UIImageView!
    
    @IBOutlet weak var signUpButton_Ref: UIButton!
    
    @IBOutlet weak var fbView: UIView!
    @IBOutlet weak var fbImageView: UIImageView!
    
    @IBOutlet weak var gView: UIView!
    @IBOutlet weak var gImageView: UIImageView!
    
    
    
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("AstrotalkSignUpVC has been REMOVED...!")
    }
    
    // MARK: - ACTIONS

}

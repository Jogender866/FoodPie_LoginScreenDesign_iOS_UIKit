//
//  SignUpVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 21/03/24.
//

import UIKit

class SignUpVC: UIViewController {
    
    // MARK: - IBOUTLETS
    @IBOutlet weak var myUIView: UIView!
    @IBOutlet weak var iconView: UIView!
    @IBOutlet weak var yourNameTxtFld: UITextField!
    @IBOutlet weak var iconImageyourName: UIImageView!
    @IBOutlet weak var emailAddressTxtFld: UITextField!
    @IBOutlet weak var iconImageEmailAdress: UIImageView!
    @IBOutlet weak var passwordTxtFld: UITextField!
    @IBOutlet weak var iconImagePassword: UIImageView!
    @IBOutlet weak var signUPButton: UIButton!
    
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("SignUpVC has been REMOVED...!")
    }
    
    // MARK: - ACTIONS

}

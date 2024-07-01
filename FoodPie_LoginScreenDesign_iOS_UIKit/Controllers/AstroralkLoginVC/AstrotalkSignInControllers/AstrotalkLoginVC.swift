//
//  AstrotalkLoginVC.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 21/03/24.
//

import UIKit
class AstrotalkLoginVC: UIViewController {
    
    // MARK: - IBOUTLETS
    @IBOutlet weak var BGView1: UIView!
    @IBOutlet weak var BGView2: UIView!
    
    @IBOutlet weak var emailIdView: UIView!
    @IBOutlet weak var emailIDTxtFld: UITextField!
    @IBOutlet weak var emailIDImageView: UIImageView!
    
    @IBOutlet weak var passwordView: UIView!
    @IBOutlet weak var passwordTxtFld: UITextField!
    @IBOutlet weak var passwordImageView: UIImageView!
    
    @IBOutlet weak var fbView: UIView!
    @IBOutlet weak var fbImageView: UIImageView!
    
    @IBOutlet weak var gView: UIView!
    @IBOutlet weak var gImageView: UIImageView!
    
    @IBOutlet weak var signInButton_Ref: UIButton!
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
    }
    
    // TODO: DEINIT
    deinit{
        print("ViewController has been REMOVED...!")
    }
    
    // MARK: - ACTIONS
}

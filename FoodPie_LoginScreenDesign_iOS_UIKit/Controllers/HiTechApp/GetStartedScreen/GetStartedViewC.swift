//
//  GetStartedViewC.swift
//  HiTech_LoginSignUp_Design_iOS_UIKit
//
//  Created by Jogender Singh on 05/03/24.
//

import UIKit

class GetStartedViewC: UIViewController {

    // MARK: - IBOUTLETS
    @IBOutlet weak var getStartedButton_Ref: UIButton!
    
    // MARK: - PROPERTIES
    // MARK: - VIEW LIFE CYCLE METHODS
    // TODO: VIEW DID LOAD METHOD
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initialSetup()
        
        self.getStartedButton_Ref.layer.cornerRadius = 20.0
    }

    // TODO: DEINIT
    deinit{
        print("ViewController has been REMOVED...!")
    }

    // MARK: - ACTIONS
}

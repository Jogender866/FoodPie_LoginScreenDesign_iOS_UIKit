//
//  LoginScreenVC+CustomMethods.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 27/03/24.
//

import Foundation
import UIKit
extension LoginScreenVC{
    internal func initialSetup(){
        self.navigationController?.isNavigationBarHidden = true
        
        // TODO: SETUP BOTTOM LABELS
//        internal func setUIBottomLabel(info:String,s_text:String,label:UILabel){
//            let myAttributedString:NSMutableAttributedString = NSMutableAttributedString()
//            
//            myAttributedString.append(NSAttributedString(string: "\(info)\n", attributes: [ NSAttributedString.Key.foregroundColor: UIColor(named: AppText.shared.k_Black) ?? .black ,NSAttributedString.Key.font:UIFont(name: AppText.shared.poppinsMedium, size: 20.0) ?? .systemFont(ofSize: 20.0)]))
//            
//            myAttributedString.append(NSAttributedString(string: s_text, attributes: [ NSAttributedString.Key.foregroundColor: UIColor(named: AppText.shared.k_Black) ?? .black ,NSAttributedString.Key.font:UIFont(name: AppText.shared.poppinsLight, size: 13.0) ?? .systemFont(ofSize: 13.0)]))
//            
//            label.attributedText = myAttributedString
//            
//            print(label.frame.size.height)
//        }
    }
}

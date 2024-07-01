//
//  PhotoDetailsModelClass.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 23/03/24.
//

import Foundation
struct PhotoResponse:Codable {
    let photos      : [Photo]
}
struct Photo        : Codable {
    let url         : URL
    let user        : Int
    let title       : String
    let id          : Int
    let description : String
}

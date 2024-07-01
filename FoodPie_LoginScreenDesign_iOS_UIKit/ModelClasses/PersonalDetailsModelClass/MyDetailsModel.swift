//
//  FullDetailsModel.swift
//  FoodPie_LoginScreenDesign_iOS_UIKit
//
//  Created by Jogender Singh on 22/03/24.
//

import Foundation
struct MyDetailsModel      : Codable {
    let location           : Location
    let personal           : Personal
}

struct Personal            : Codable {
    let headquarters       : String
    let height             : Float
    let logo               : String
    let name               : String
    let phone_number       : String
    let salary_package     : Double
    let slogan             : String
    let website            : String
}

struct Location            : Codable {
    let city               : String
    let company            : String
    let company_address    : String
    let country            : String
    let weather            : Weather
}

struct Weather             : Codable {
    let description        : String
    let last_updated_epoch : Int
    let temp_c             : Int
}

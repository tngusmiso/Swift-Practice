//
//  Friend.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 12..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

struct Friend: Codable{
    
    struct Address: Codable{
        let country: String
        let city: String
    }
    
    let name: String
    let age: Int
    let addressInfo: Address
    
    var nameAndAge:String{
        return name + "(\(age))"
    }
    var fullAddress:String{
        return addressInfo.city + "," + addressInfo.country
    }
    
    enum CodingKeys: String, CodingKey{
        case name, age
        case addressInfo = "address_info"
    }

}

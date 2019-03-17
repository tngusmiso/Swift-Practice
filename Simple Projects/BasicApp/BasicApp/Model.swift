//
//  Model.swift
//  BasicApp
//
//  Created by 임수현 on 2019. 3. 15..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

struct APIResponse: Codable{
    let results: [Person]
}

struct Person: Codable{
   
    struct Name:Codable{
        let title: String
        let first: String
        let last : String
        
        var full: String {
            return self.title + ". " + self.first + " " + self.last
        }
    }
    
    struct Picture: Codable{
        let large: String
        let medium: String
        let thumbnail: String
    }
    
    let name: Name
    let email: String
    let picture: Picture
}

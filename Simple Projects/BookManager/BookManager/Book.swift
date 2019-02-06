//
//  Book.swift
//  BookManager
//
//  Created by 임수현 on 2019. 2. 6..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

struct Book {
    var name:String
    var genre:String
    var author:String
    
    func bookPrint() {
        print("Name:\(name)")
        print("Genre:\(genre)")
        print("Author:\(author)")
    }
}

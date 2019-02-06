//
//  BookManager.swift
//  BookManager
//
//  Created by 임수현 on 2019. 2. 6..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

class BookManager{
    // mutable array
    var bookList = [Book]()
    
    func registerBook(bookObject:Book){
        bookList.append(bookObject)
    }
    
    func removeBooks(name:String){
        for (index, value) in bookList.enumerated() {
            if value.name == name{
                bookList.remove(at: index)
            }
        }
    }
    
    func showAllBooks() -> String {
        var strTemp = ""
        for bookTemp in bookList {
            strTemp += "Name:\(bookTemp.name)\n"
            strTemp += "Genre:\(bookTemp.genre)\n"
            strTemp += "Author:\(bookTemp.author)\n"
            strTemp += "---------------\n"
        }
        return strTemp
    }
    
    func countBooks() -> Int {
        return bookList.count
    }

    func searchBook(name:String) -> String? {
        var strTemp = ""
        for bookTemp in bookList {
            if bookTemp.name == name{
                strTemp += "Name:\(bookTemp.name)\n"
                strTemp += "Genre:\(bookTemp.genre)\n"
                strTemp += "Author:\(bookTemp.author)\n"
                return strTemp
            }
        }
        return nil
    }
}

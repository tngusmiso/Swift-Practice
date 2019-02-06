//
//  main.swift
//  BookManager
//
//  Created by 임수현 on 2019. 2. 4..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

var book1 = Book(name:"햄릿", genre:"비극", author:"셰익스피어")
var book2 = Book(name:"누구를 위하여 종을 울리나", genre:"전쟁소설", author:"헤밍웨이")
var book3 = Book(name:"죄와 벌", genre:"사실주의", author:"톨스토이")


var myBookManager = BookManager()
myBookManager.registerBook(bookObject: book1)
myBookManager.registerBook(bookObject: book2)
myBookManager.registerBook(bookObject: book3)

print(myBookManager.showAllBooks())
print("Number of books: \(myBookManager.countBooks())\n")

//var searchResult = myBookManager.searchBook(name:"햄릿")
//if searchResult != nil{
//    print("\(searchResult)를 찾았습니다")
//}
//else{
//    print("찾으시는 책이 없습니다.")
//}

print("검색결과:")
if let searchResult = myBookManager.searchBook(name: "햄릿"){
    print("\(searchResult)를 찾았습니다\n")
}
else{
    print("찾으시는 책이 없습니다.\n")
}

myBookManager.removeBooks(name: "죄와 벌")
print(myBookManager.showAllBooks())

//
//  main.swift
//  optional
//
//  Created by 임수현 on 2019. 2. 4..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

let impossibleNumber = "f"
let convertedNumber2 = Int(impossibleNumber)
print(convertedNumber2) // 형변환 할 수 없으므로 nil 값이 출력됨

let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)
print(convertedNumber)  //Optional(123)이라고 랩핑되어 나온다.

if convertedNumber != nil {
    print(convertedNumber!) //unwrapping
}

//optional binding
if let actualNumber = Int(possibleNumber){
    print(actualNumber) // 자동으로 unwrapping되어 나온다.
}

// var serverResponseCoed:Int = nil     //일반 Type에는 nil값을 넣을 수 없다.
var serverResponseCoed:Int? = 404
serverResponseCoed = nil
print(serverResponseCoed)

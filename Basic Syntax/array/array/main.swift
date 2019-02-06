//
//  main.swift
//  array
//
//  Created by 임수현 on 2019. 1. 17..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

// 빈 문자열 만들기
var emptyArray = Array<String>()
var emptyArray2 = [String]()
print("emptyArray:\(emptyArray)")
print(emptyArray.count)
print("emptyArray2:\(emptyArray2)")
print(emptyArray2.count)

// 값 추가하기(append)
emptyArray2.append("Miso")
emptyArray2.append("Lim")
print("emptyArray2:\(emptyArray2)")

// 리터럴 문자열
var array1 = ["Apple","Orange"]
// 값 추가하기(+= 연산자)
array1 += ["Banana"]
array1 += ["Grape"]
array1 += ["Pear"]
array1 += ["Peach"]
print("array1:\(array1)")
print("array1[2]:\(array1[2])")

// 값 삽입하기1
array1[2] = "Hi"
print("array1[2]:\(array1[2])")

// 값 삽입하기2
array1[3...5] = ["A","B","C"]
print("array1:\(array1)")
print(array1.count)

// immutable array
let immutableArray = ["Apple", "Orange", "Banana", "Grape", "Pear", "Peach"]
// immutableArray[4] = "hello"  // immpossible
print("immutableArray:\(immutableArray)")

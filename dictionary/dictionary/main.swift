//
//  main.swift
//  dictionary
//
//  Created by 임수현 on 2019. 1. 18..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

// 빈 딕셔너리 생성
var emptyDictionary = Dictionary<String,Int>()
var emptyDictionary2 = [String:Int]()

if(emptyDictionary.isEmpty){
    print("emptyDictionary is Empty")
}
if(emptyDictionary2.isEmpty){
    print("emptyDictionary2 is Empty")
}

// 값 추가하기
emptyDictionary["ant"] = 6
emptyDictionary["snake"] = 0
print("emptyDictionary:\(emptyDictionary)")
print(emptyDictionary.count)

// 생성 초기화
var dictionary = ["ant":6,"snake":0,"cheetah":4]
print(dictionary)

dictionary["human"]=2
print(dictionary)

// 값 변경
dictionary["ant"]=7
print(dictionary)

// value값 얻기
print(dictionary["cheetah"])

// immutable dictionary
let immuDic = ["ant":6,"snake":0,"cheetah":4]
// immuDic["ant"] = 7   //impossible
print(immuDic)


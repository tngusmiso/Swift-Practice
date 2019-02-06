//
//  main.swift
//  while_for
//
//  Created by 임수현 on 2019. 1. 18..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

// while문
var age = 0
while age < 5 { // 조건문은 괄호안에 넣지 않음
    age += 1    // age++ 과 같은 증감연산자 사용 불가
    print(age)
}

// 배열
let names = ["Anna","Alex","Brain","Jack"]
for name in names {
    print("hello, \(name)")
}

// 딕셔너리
let numberOfLegs = ["ant":6, "snake":0, "cheetah":4]
for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) have \(legsCount) legs")
}

// 범위
for index in 1...5 {
    print("\(index) times 5 is \(index * 5)")
}

// 단순반복
for _ in 1...5{
    print("hi")
}

// 단순반복(미포함)
let minute = 60
for tickMark in 0..<minute {
    print(tickMark)
}

// interval
let minuteInterval = 5
for tickMark in stride(from: 0, to: minute, by: minuteInterval){
    print(tickMark)
}
for tickMark in stride(from: 0, through: minute, by: minuteInterval){
    print(tickMark)
}


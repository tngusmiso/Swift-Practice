//
//  main.swift
//  function
//
//  Created by 임수현 on 2019. 2. 2..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

func sayHello(){
    print("Hello")
}
sayHello()


// parameter가 있는 함수
func sayHello2(name : String){
    print("Hello \(name)")
}
sayHello2(name : "Clara");


// return 값이 있는 함수
func sayHello3 (name:String) -> String {
    return "Hello \(name)"
}
print(sayHello3(name: "Jane"))


// default parameter
func sayHello4 (name : String = "Kim") -> String {
    return "Hello \(name)"
}
print(sayHello4())          // 값을 안 넣으면
print(sayHello4(name : "Park"))    // 값을 넣으면


// argument lable
func sayHello5(insertYourName name:String, insertYourAge age:Int){
    print("Hello! \(name) is \(age) years old.")
}
sayHello5(insertYourName: "Joy", insertYourAge: 10)


// underScore
func sayHello6(_ name:String, _ age:Int) -> String{
    return "Hello! \(name) is \(age) years old."
}
print(sayHello6("Lim",20))

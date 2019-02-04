//
//  main.swift
//  Structure
//
//  Created by 임수현 on 2019. 2. 4..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

// 구조체의 편리성을 알기 위해서 불편하게 사용해보자
var name = ["Park", "Kim", "Lee", "Lim"]
var age = [2,3,4,5]
var height = [40,50,60,70]

print("배열에서는", name[0], age[0], height[0]) //Park의 데이터


//구조체는 초기화하지 않아도 됨
struct Student {
    var name:String
    var age:Int
    var height:Int
}
var student1 = Student(name: "Park", age: 2, height: 40)
var student2 = Student(name: "Kim", age: 3, height: 50)
var student3 = Student(name: "Lee", age: 4, height: 60)
var student4 = Student(name: "Lim", age: 5, height: 70)

print("구조체에서는", student1.name, student1.age, student1.height)

//
//  main.swift
//  if_switch
//
//  Created by 임수현 on 2019. 1. 20..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

let age = 7
if age < 3 {
    print("Baby")
} else if age >= 3 && age < 20{
    print("Child")
} else{
    print("Adult")
}


switch age{
case 0,1,2:
    print("baby")
case 3..<20:
    print("child")
default:
    print("adult")
}

//
//  main.swift
//  class
//
//  Created by 임수현 on 2019. 2. 4..
//  Copyright © 2019년 limsuhyun. All rights reserved.
//

import Foundation

//클래스 생성
class Vehicle{
    var currentSpeed=0.0    //stored property
    
    var description: String{    //computed property
        return "Traveling at \(currentSpeed) miles per hour"
    }
    
    func makeNoise(){       //method
        print("noiseless")
    }
}

//인스턴스 생성
let someVehicle = Vehicle()
print(someVehicle.currentSpeed)

//sorted property 값 변경
someVehicle.currentSpeed=1.0
print(someVehicle.currentSpeed)

//computed property
print(someVehicle.description)

//메소드 실행
someVehicle.makeNoise()


//=============================================================
//상속
class Bicycle: Vehicle{
    var hasBasket = false
}

//인스턴스 생성
let someBicycle = Bicycle()

//상속된 property
someBicycle.currentSpeed = 15.0
print(someBicycle.description)

//추가된 Property
someBicycle.hasBasket = true
print(someBicycle.hasBasket)


//=============================================================
//상속의 상속
class Tandem:Bicycle{
    var currentNumberOfPassengers = 0
    
    //오버라이드
    override var description:String{
        return "Traveling at \(currentSpeed) miles per hour, number of passangers : \(currentNumberOfPassengers)"
    }
}

let someTandem = Tandem()
someTandem.hasBasket = true
someTandem.currentNumberOfPassengers = 2
someTandem.currentSpeed = 22.0

print("Tandem:\(someTandem.description)")


//=============================================================
//상속과 오버라이드
class Train:Vehicle{
    override func makeNoise() {
        print("Choo choo")
    }
}
let someTrain = Train()
someTrain.makeNoise()



//=============================================================
//초기화 함수와 오버리아드
class Car:Vehicle{
    var gear = 1
    
    //Vehicle에도 보이진 않지만 init이 생략되어 있기 떄문에
    //상속받는 클래스의 init은 override를 써야 한다.
    override init(){
        print("Car")
    }
    
    // parameter가 있는 init()
    init(newGear:Int){
        gear = newGear
    }
}
let someCar1 = Car()
let someCar2 = Car(newGear: 5)  //gear가 초기화 된 상태로 들어감
print(someCar2.gear)

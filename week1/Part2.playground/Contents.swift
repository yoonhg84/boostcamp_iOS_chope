//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
var ex: Int
ex = 10
var arrayOfInts: Array<Int>
//arrayOfInts: [Int]

var dictionaryOfCapitalsByCountry: Dictionary<String,String>
//dictionaryOfCaptialsByCountry: [String:String]

var winningLottoeryNumbers: Set<Int>

let countingUp = ["One", "Two"]
type(of: countingUp)

let secondElement = countingUp[1]
//countingUp[Num] 서브스크립팅을 제공. 인덱스 범위를 넘어서면 trap 발생. 런타임오류.

let availableRooms = Set([205, 411, 412])


//부동소수점은 Double 이 기본타입.

let doubleCheck = 1.9
type(of: doubleCheck)

//property 타입의 인스턴스와 연관된 값.
var countingUp2 = ["one", "two"]
print(countingUp2.count)

// 인스턴스 메소드. ex) Array<T>.append( V )
countingUp2.append("three") //배열에 항목 추가.


var reading1: Float?
var reading2: Float?
var reading3: Float?

reading1 = 9.0
reading2 = 9.2
reading3 = 9.7

print(reading1) // Optional 타입은 !를 사용한 강제 언래핑 , if-let 구문을 통한 옵셔널 바인딩을 통해 언래핑하여야한다.

//1
print(reading1!)

//2 
    if let unwrappedValue = reading2 {
        print(unwrappedValue)}
        else {
        print("is nil" )
}

if let r1 = reading1{
        let avg = (r1)
        print(avg)
} else {
    print("nil")
}







let nameByParkingSpace = [13: "Alice", 27: "Bob"]
//Dictionary<Int: String>

if let space13Assignee = nameByParkingSpace[13] {
    print("Key 13 is assigned in the diction")
}

print(nameByParkingSpace[13])
print(nameByParkingSpace[20])

//딕셔너리는 존재하지 않는 key 값으로 접근하여도 오류를 범하지 않고 nil 값으로 반환한다.
//array 는 존재하지 않는 index 로 접근하였을 때 오류를 나타냄.


for (space, name) in nameByParkingSpace {
    let permit = "Space \(space): \(name)"
    print(permit)
}

var testArr = [100,200,300,400,500]


//배열의 인덱스와 해당인덱스의 값을 출력해줌. enumerated() Tuple의 시퀀스를 반환.
for (i,int2) in testArr.enumerated(){
    print(i)
    print(int2)
}




enum PieType {
    case Apple
    case Cherry
    case Pecan
}

let favoritePie = PieType.Apple

let name: String
switch favoritePie {
case .Apple:
    name = "Apple"
case .Cherry:
    name = "cherry"
case .Pecan:
    name = "Pecan"
}


//break 문이 따로 없어 필요시 fallthrough키워드 사용.


//0~9 / 0...10 0~10
for i in 0..<10 {
    print(i)
}


//switch 문은 모든 case 를 구현하지 않는 이상 default: 구문을 꼭 구현해야함.


//열거형은 원시값을 가질 수 있다. 보통 Int 값을 갖지만 String , Character 값도 가질 수 있다. 
//밑에와 같이 Apple2 를 0으로 할당하였다면 그 다음 case 는 순차적으로 증가시켜 할당한다. 1,2
enum PieType2: Int {
    case Apple2 = 0
    case Cherry2
    case Pecan2
}

let pieRawValue = PieType2.Pecan2.rawValue
if let pie = PieType2(rawValue: pieRawValue){
    print(pie)
}else {
    print( "nil")
}
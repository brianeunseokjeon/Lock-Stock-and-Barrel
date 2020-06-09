import UIKit
/*
두가지 type: named type , compund type
named type - class , struct, enum, protocol
 named type 중 데이터타입 - Int, String, ...
compound type - function type, tuple type
*/
//NSObject


class MyType:NSObject {
    var value: Int = 051
   
    override var description: String {
        return "\(value)"
    }
}

let v3 = MyType()
print(v3)

struct MyData1: Equatable {
    var value1: Int = 0
    var value2: Int = 0
    
}

//func == (lhs: MyData1, rhs: MyData1) -> Bool {
//    return (lhs.value1 == rhs.value1 && lhs.value2 == rhs.value2)
//}

let v11 = MyData1(value1: 10, value2: 20)
let v12 = MyData1(value1: 20, value2: 40)
let v13 = MyData1(value1: 10, value2: 20)

v11 == v12    // false
v11 == v13    // true




func bubbleSort<T:Comparable>(input:[T]) -> [T] {
    var result:[T] = input
    for x in 0...(input.count-2) {
        for y in 0...(input.count-2-x) {
            if result[y] > result[y+1] {
                (result[y],result[y+1]) = (result[y+1],result[y])
            }
        }
        print(result)
    }
    return result
}


//bubbleSort(input: [7,4,5,1,3])

let defaultValue = [9,6,7,3,5]
let a = [1,2,3,4,5,3]

// 선택정렬
func selectionSort<T:Comparable>(input:[T]) -> [T] {
    var result:[T] = input
    
    for x in 0...(input.count-2) {
        var leastValueLocation = x
        for y in x+1...(input.count-1) {
            if result[leastValueLocation] > result[y] {
                leastValueLocation = y
            }
        }
        
        if x != leastValueLocation {
            (result[x],result[leastValueLocation]) = (result[leastValueLocation],result[x])
        }
    print(result)

    }
    return result
}
selectionSort(input: defaultValue)


//삽입정렬

func insertionSort<T:Comparable>(input:[T]) -> [T] {
    var result:[T] = input
    
    
    
    
    
    return result
}


func basicSort<T:Comparable>(input:[T]) -> [T] {
    var result:[T] = input
    return result
}

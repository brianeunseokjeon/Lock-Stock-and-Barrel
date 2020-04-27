import UIKit
// https://programmers.co.kr/learn/courses/30/lessons/12979?language=swift
func solution(_ n:Int, _ stations:[Int], _ w:Int) -> Int{
    var answer = 0
    let numberOfRadioBaseStations = 2 * w + 1
    var lastNumber = 0
    for station in stations {
        if station - w - 1 - lastNumber > 0 {
            let temp = Double(station - w - 1 - lastNumber) / Double(numberOfRadioBaseStations)
            answer += Int(ceil(temp))
        }
        lastNumber = station + w
    }
    if n - lastNumber > 0 {
        let temp = Double(n - lastNumber) / Double(numberOfRadioBaseStations)
        answer += Int(ceil(temp))
    }
    return answer
}
solution(11, [4,11], 1)
solution(16, [9], 2)


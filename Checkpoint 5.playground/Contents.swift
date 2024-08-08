import SwiftUI

let luckNumbers = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

func filterunEven(_ list: [Int]) -> [Int] {
    var unevenList = [Int]()
    
    for i in list {
        if i.isMultiple(of: 2) == false {
            unevenList.append(i)
        }
    }
    
    return unevenList
    
}


filterunEven(luckNumbers).sorted().map {print("\($0) is a lucky number ")}

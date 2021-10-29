
import Foundation

func solution(_ array:[Int], _ commands:[[Int]]) -> [Int] {
    var answer:[Int] = []
    for x in commands{
        var temp:[Int] = []
        for i in x[0]-1 ... x[1]-1{
            temp.append(array[i])
        }
        temp.sort()
        answer.append(temp[x[2]-1])
    }
    
    return answer
}

solution([1, 5, 2, 6, 3, 7, 4], [[2, 5, 3], [4, 4, 1], [1, 7, 3]])

//  var x = [2, 3]
//  print(x)
//  print(x[0 ... 0][0])

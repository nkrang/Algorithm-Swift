import Foundation

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    var x = 1
    var y = 1
    
    while true{
        if x * 2 + 2 * (y-2) == brown && (x-2) * (y-2) == yellow{
            break
        }
        
        if x == y{
            x += 1
            y = 1
        }else{
            y += 1
        }
    }
    
    
    return [x, y]
}

solution(2, 3)

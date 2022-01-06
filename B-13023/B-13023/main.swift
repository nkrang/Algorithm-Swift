//
//  main.swift
//  Algorithm
//
//  Created by SeongEun on 2022/01/06.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }
let N = input[0]
let M = input[1]

var dic : [Int:[Int]] = [:]

for _ in 1...M{
    let input = readLine()!.split(separator: " ").map {Int($0)!}
    let x = input[0]
    let y = input[1]
    if (dic[x] != nil){
        dic[x]!.append(y)
    }else{
        dic[x] = [y]
    }
    if dic[y] != nil{
        dic[y]!.append(x)
    }else{
        dic[y] = [x]
    }
}

var visited = [Int](repeating: 0, count: N)
var answer = 0

func dfs(nod: Int, depth: Int){
    if depth == 4{
        answer = 1
        return
    }
    
    for x in dic[nod] ?? []{
        if visited[x] == 0{
            visited[x] = 1
            dfs(nod: x, depth: depth+1)
            visited[x] = 0
        }
    }
}

for i in 0...N-1{
    if answer == 1{
        break
    }
    visited[i] = 1
    dfs(nod: i, depth: 0)
    visited[i] = 0
}
print(answer)

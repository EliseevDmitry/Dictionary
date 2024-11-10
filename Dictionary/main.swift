//
//  main.swift
//  Dictionary
//
//  Created by Dmitriy Eliseev on 10.11.2024.
//

import Foundation

//1. Шопинг в Нью-Йорке. Сколько потратил есть словарь покупок и цен и налог 10%
//
//{"socks":5, "shoes":60, "sweater":30} -> 95 * 1.1 = 104.5

//func totalPrice(_ dict: Dictionary<String, Int>) -> Double {
//    Double(dict.values.reduce(0){$0 + $1}) * 1.1
//}
//
//print(totalPrice(["socks":5, "shoes":60, "sweater":30]))


//func totalPrice(_ dict: Dictionary<String, Int>) -> Double {
//    var counter = Double()
//    for value in dict.values {
//        counter += Double(value) * 1.1
//    }
//    return counter
//}
//
//print(totalPrice(["socks":5, "shoes":60, "sweater":30]))


//func totalPrice(_ dict: Dictionary<String, Int>) -> Double {
//    var counter = Double()
//    var values = dict.values
//    var iterator = values.makeIterator()
//    while let value = iterator.next() {
//        counter += Double(value) * 1.1
//    }
//    
//    return counter
//}
//
//print(totalPrice(["socks":5, "shoes":60, "sweater":30]))


//2. Написать функцию которая принимает строку и на выходе возвращает количество вхождений символов в строке
//
//"aaabbbccaa" → [a:5,b:3,c:2]
//
//"aaabbbccaaxyz" -> "a3b3c2a2xyz"

//func findContains(_ string: String) -> [Character: Int] {
//    var result: [Character: Int] = [:]
//    var strArray: [Character] = Array(string)
//    for item in strArray {
//        if !result.keys.contains(item){
//            result[item] = 1
//        } else if result.keys.contains(item) {
//            if let count = result[item] {
//                result.updateValue(count + 1, forKey: item)
//            }
//        }
//    }
//    return result
//}
//
//print(findContains("aaabbbccaa"))

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


//3. Дан массив - создать из него словарь в котором ключи элементы массива
//а значения - элементы возведенные в куб
//
//[1, 2, 3, 4, 5] -> [1: 1, 2: 8, 3: 27, 4: 64, 5: 125]

//func cubication(_ array: [Int]) -> [Int: Int] {
//    var result: [Int: Int] = [:]
//    for (index, item) in array.enumerated() {
//        result[index] = Int(pow(Float(item), 3.0))
//    }
//    return result
//}
//
//print(cubication([1, 2, 3, 4, 5]))


//4. Найти два максимальных значения у словаря
//
// ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5] -> (5, 4)

//func findTwoMaxValues(_ dict: [String: Int]) -> (Int, Int) {
//    var collection = dict.values
//    return (collection.sorted { $0 > $1}[0], collection.sorted { $0 > $1}[1])
//}
//
//print(findTwoMaxValues(["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]))

//5. Сконвертировать массив словарей в массив кортежей
//
//[[1: 10], [2: 20], [1: 30], [2: 40]] -> [(1: 10), (2, 20), (1: 30), (2: 40)]

//func convertToListOfTuples(_ array: [[Int: Int]]) -> [(Int, Int)] {
//    var arrayTuple: [(Int, Int)] = []
//    for item in array {
//        for (key, value) in item {
//            arrayTuple.append((key, value))
//        }
//    }
//    return arrayTuple
//}
//
//print(convertToListOfTuples([[1 : 10], [2 : 20], [1 : 30], [2 : 40]]))


//6. Найти у словаря -> минимальное и максимальное значение
//
//["a": 1, "b": 2, "c": 3, "d": 4, "e": 5] -> (1, 5)

//func findminMaxValues(_ dict: Dictionary<String, Int>) -> (Int, Int) {
//    var collection = dict.values.sorted {$0 < $1}
//    return (collection.first ?? 0, collection.last ?? 0)
//
//}
//
//print(findminMaxValues(["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]))


//7. Проверить является ли слово анаграмом второго слова (анаграмма - перестановка букв)
//
//"foefet", "toffee" -> true
//"Buckethead", "DeathCubeK" -> true

//func isAnagram(lhs: String, rhs: String) -> Bool {
//    var arrayString = Array(lhs)
//    var result = true
//    var dictString: [Character : Character] = Dictionary()
//    for item in arrayString {
//        dictString[Character(item.lowercased())] = Character(item.uppercased())
//    }
//    for item in rhs {
//        if !dictString.keys.contains(item) && !dictString.values.contains(item) {
//            result = false
//        }
//    }
//    return result
//}
//
//print(isAnagram(lhs: "Buckethead", rhs: "DeathCubeK"))
//
//
//
//
//
//8. Соединить два массива в один словарь
//
//["a", "b", "c", "d"] [1, 2, 3] -> ["a": 1, "b": 2, "c": 3, "d": nil]
//
//func createDictionary(keys: [String], values: [Int]) -> [String: Int?] {
//    var result: [String: Int?] = Dictionary()
//    for (index, item) in keys.enumerated() {
//        if index >= values.count {
//            result.updateValue(nil, forKey: item) //только так получилось
//            continue
//        }
//        result[item] = values[index]
//    }
//    return result
//}
//
//print(createDictionary(keys: ["a", "b", "c", "d"], values: [1, 2, 3]))
//
//
//
//
//
//
//9. Посчитать количество nil в значениях словаря
//
//[2: [nil, nil], 3: [nil], 4: [2], 5: [nil], 6: [2, 3]] -> 4
//
//func searchnils(dict: [Int: Array<Int?>]) -> Int {
//    var counter = Int()
//    var arrValues = dict.values
//    for item in arrValues {
//        counter += item.filter { $0 == nil }.count
//    }
//    return counter
//}
//
//print(searchnils(dict: [2: [nil, nil], 3: [nil], 4: [2], 5: [nil], 6: [2, 3]]))
//
//
//
//
//
//
//10. На входе число нужно раскрыть слово
//
//"a" : 6
//"b" : 1
//"d" : 7
//"e" : 4
//"i" : 3
//"l" : 2
//"m" : 9
//"n" : 8
//"o" : 0
//"t" : 5
//
//49632 -> "email"
//7415 -> "debt"
//637 -> "aid"
//
//func translateNumber(_ number: Int) -> String {
//    let intDict = ["a" : 6, "b" : 1, "d" : 7, "e" : 4, "i" : 3, "l" : 2, "m" : 9, "n" : 8, "o" : 0, "t" : 5]
//    var strDict:[Int : String] = [:]
//    for (key, value) in intDict {
//        strDict[value] = key
//    }
//    print(strDict)
//    var result = String()
//    for item in Array(String(number)) {
//        guard let dataInt = Int(String(item)) else { return "" }
//        if let char = strDict[dataInt] {
//            result.append(char)
//        }
//    }
//    return result
//}
//
//
//print(translateNumber(637))


//11. Смержить 2 словаря в один
//
//["A": 1, "B": 2] и ["A": 3] -> ["A": [1, 3], "B": [2]]

//func merge(lhs: [String: Int], rhs: [String: Int]) -> [String: [Int]] {
//    var result: [String:[Int]] = [:]
//    for (key, item) in lhs {
//        result[key] = [item]
//    }
//    for (key, item) in rhs {
//        if result.keys.contains(key) {
//            result[key]?.append(item)
//        } else {
//            result[key] = [item]
//        }
//    }
//    return result
//}
//
//print(merge(lhs: ["A": 1, "B": 2], rhs: ["A": 3]))
//??? есть ли красивое решение для этого???



//12. Свитчнуть словарь, переставить местами ключи и значения словаря
//["Ice": "Cream", "Age": "21", "Light": "Cream", "Double": "Cream"] ->
//["Cream": ["Ice", "Double", "Light"], "21": ["Age"]]
//
//func switchDictionary(_ dict: [String: String]) -> [String: [String]] {
//    var result: [String:[String]] = Dictionary()
//    var iterator = dict.makeIterator()
//    while let element = iterator.next() {
//        let (key, value) = element
//        if result.keys.contains(value) {
//            result[value]?.append(key)
//        } else {
//            result[value] = [key]
//        }
//    }
//    return result
//}
//
//print(switchDictionary(["Ice": "Cream", "Age": "21", "Light": "Cream", "Double": "Cream"]))
//
//
//
//
//13. Конвертнуть массив объектов в словарь
//[["Grae Drake", "98110"], ["Bethany Kok"], ["Alex Nussbacher", "94101"], ["Darrell Silver", "11201"]] ->
//
//[
//    "Grae Drake": "98110",
//    "Bethany Kok": nil,
//    "Alex Nussbacher": "94101",
//    "Darrell Silver": "11201",
//]
//
//func userContacts(_ list: [[String]]) -> [String: String?] {
//    var result: [String : String?] = [:]
//    for item in list {
//        if item.count == 2 {
//            result[item[0]] = item[1]
//        }
//        if item.count == 1 {
//            result.updateValue(nil, forKey: item[0])
//        }
//    }
//    return result
//}
//
//print(userContacts([["Grae Drake", "98110"], ["Bethany Kok"], ["Alex Nussbacher", "94101"], ["Darrell Silver", "11201"]]))

//
//
//
//14. На входе карта на выходе масть
//
//"1♣" -> "clubs"
//"2♦" -> "diamonds"
//"3♥" -> "hearts"
//"4♠" -> "spades"
//
//func defineSuit(card: String) -> String {
//    let cardsDictionary = ["1♣" : "clubs", "2♦" : "diamonds", "3♥" : "hearts", "4♠" : "spades"]
//    if let result = cardsDictionary[card] {
//        return result
//    } else {
//        return ""
//    }
//}
//
//print(defineSuit(card: "1♣"))
//
//
//
//15. Вытащить символы которые повторяются в строке больше всех раз, может быть
//
//"tomatto" -> ["t"]
//"sarsaparilla" -> ["a"]
//["abcdefab"] -> ["a", "b"]
//
//
//func appersMode(string: String) -> [String] {
//    var counter: [Character:Int] = [:]
//    for item in Array(string) {
//        if !counter.keys.contains(item) {
//            counter[item] = Int()
//        } else {
//            if let count = counter[item] {
//                counter.updateValue(count + 1, forKey: item)
//            }
//        }
//    }
//    return counter.filter {$0.value == counter.values.max() ?? 0}.map {String($0.key)}
//}
//
//print(appersMode(string: "abcdefab"))


//16. Отсортировать элементы в словаре чтобы value изменялось от большего к меньшему
//
//[3:1, 2:2, 1:3] -> [(1,3), (2,2), (3,1)]
//[1:2, 2:4, 3:6] -> [(3,6), (2,4), (1,2)]
//
//func sortDict(_ dict: [Int: Int]) -> [(Int, Int)] {
//    return dict.sorted { $0.value > $1.value }
//}
//
//print(sortDict([3:1, 2:2, 1:3]))
//

//
//17. Посчитайте ценность слова
//
//A, E, I, O, U, L, N, S, T, R – 1 очко;
//D, G – 2 очка;
//B, C, M, P – 3 очка;
//F, H, V, W, Y – 4 очка;
//K – 5 очков;
//J, X – 8 очков;
//Q, Z – 10 очков.
//
//APPLE = 1 + 3 + 3 + 1 + 1 = 9
//
//func score(_ string: String) -> Int {
//    var charDictionary: [Character : Int] = Dictionary()
//    for item in Array("A, E, I, O, U, L, N, S, T, R") {
//        charDictionary[item] = 1
//    }
//    for item in Array("D, G") {
//        charDictionary[item] = 2
//    }
//    for item in Array("B, C, M, P") {
//        charDictionary[item] = 3
//    }
//    for item in Array("F, H, V, W, Y") {
//        charDictionary[item] = 4
//    }
//    for item in Array("K") {
//        charDictionary[item] = 5
//    }
//    for item in Array("J, X") {
//        charDictionary[item] = 8
//    }
//    for item in Array("Q, Z") {
//        charDictionary[item] = 10
//    }
//    var counter = Int()
//    for item in string {
//        if charDictionary.keys.contains(item) {
//            if let number = charDictionary[item] {
//                counter += number
//            }
//        }
//    }
//    return counter
//}
//
//print(score("APPLE"))
//
//
//18. Посчитать количество пар
//(Усложненный вариант - решить за O(n))
//
//[0, 0, 0, 1, 1, 1, 1, 2, 2, 2] -> 4
//[1, 1, 1, 2, 2, 2] -> 2
//
//func countCouples(array: [Int]) -> Int {
//    var numberDict: [Int : Int] = [:]
//    for item in array {
//        if !numberDict.keys.contains(item) {
//            numberDict[item] = 1
//        } else {
//            if let count = numberDict[item] {
//                numberDict[item] = count + 1
//            }
//        }
//    }
//    var values = numberDict.values.makeIterator()
//    var counter = Int()
//    while let item = values.next() {
//        counter += Int(item/2)
//    }
//    return counter
//}
//
//print(countCouples(array: [1, 1, 1, 2, 2, 2]))


//func countCouples(array: [Int]) -> Int {
//    var elementArr = Int()
//    var counter = 1
//    var resultCount = Int()
//    if let firstElement = array.first {
//        elementArr = firstElement
//    } else {
//        return 0
//    }
//    for (index, item) in array.enumerated() {
//        if index + 1 < array.count {
//            if elementArr == array[index + 1] {
//                counter += 1
//            } else {
//                counter += 1
//                elementArr = array[index + 1]
//                resultCount += Int(counter/2)
//                counter = 1
//            }
//        }
//    }
//    return resultCount
//}
//
//print(countCouples(array: [0, 0, 0, 1, 1, 1, 1, 2, 2, 2]))
//БЕЗ СЛОВАРЯ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
//
//
//
//19. Есть словарь нужно получить key по значению
//
//["a": 101, "b": 102, "c": 103] и 101 -> "c"
//
//func keyByValue(value: Int, dict: [String: Int]) -> String {
//dict.filter {$0.value == value}.map{$0.key}.first!
//}
//
//print(keyByValue(value: 102, dict: ["a": 101, "b": 102, "c": 103, "f" : 102]))

//
//
//20. Конвертнуть строку с данными в словарь
//
//"https:api.vk.com/authorize#token=12345&user_id=45678&expire_in=7890554012" ->
//[token: 12345", user_id: 45678, expire_in: 7980554012]
//
//func convert(url: String) -> [String: Int] {
//    var result: [String : Int] = Dictionary()
//    let index = url.index(after: url.firstIndex(of: "#")!)
//    let newString = url.suffix(from: index)
//    let arrString = newString.components(separatedBy: "&")
//    for item in arrString {
//        let dataArr = item.components(separatedBy: "=")
//        result[dataArr[0]] = Int(dataArr[1])
//    }
//    return result
//}
//
//print(convert(url: "https:api.vk.com/authorize#token=12345&user_id=45678&expire_in=7890554012"))
//
//
//
// 21. Определить является ли слово изограммой (isogram) -
// слово в котором нет повторяющихся букв, последовательных или непоследовательных
//
// "Dermatoglyphics" -> true
// "moose" -> false
// "aba" -> false
//
// func isIsogramm(_ string: String) -> Bool {
//     var newDict: [Character : Character] = Dictionary()
//     let newArr = Array(string)
//     for item in newArr {
//         if !newDict.keys.contains(item) {
//             newDict[item] = item
//         }
//     }
//     if string.count == newDict.count {
//         return true
//     } else {
//         return false
//     }
// }
//
//print(isIsogramm("moose"))
//
//
//
// 22. Скомбинировать словари в один
//
// A = [ "a": 10, "b": 20, "c": 30 ]
// B = [ "a": 3, "c": 6, "d": 3 ]
// [A + B] -> [ "a": 13, "b": 20, "c": 36, "d": 3 ]
//
// func combine(array: [Dictionary<String, Int>]) -> Dictionary<String, Int> {
//     if array.count < 2 && array.count > 2 {
//         return [:]
//     } else {
//         var resultDict = array[0]
//         for (key, value) in array[1] {
//             if resultDict.keys.contains(key) {
//                 if let dataInt =  resultDict[key] {
//                     resultDict[key] = dataInt + value
//                 }
//             } else {
//                 resultDict[key] = value
//             }
//         }
//         return resultDict
//     }
// }
//
//print(combine(array: [[ "a": 10, "b": 20, "c": 30 ], [ "a": 3, "c": 6, "d": 3 ]]))


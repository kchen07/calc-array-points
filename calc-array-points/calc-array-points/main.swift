//
//  main.swift
//  calc-array-points
//
//  Created by Kelley Lu Chen on 10/11/17.
//  Copyright © 2017 Kelley Lu Chen. All rights reserved.
//

import Foundation

/*
 * Basic functions
 */
func add (first: Int, second: Int) -> Int{
    return first + second
}

func mul (first: Int, second: Int) -> Int{
    return first * second
}

func divide (first: Int, second: Int) -> Int{
    return first / second
}

func subtract (first: Int, second: Int) -> Int{
    return first - second
}

func arithmetic (first:Int, second: Int, operation: (Int, Int) -> Int) -> Int {
    return operation(first, second)
}

/*
 * Array Calculator
 */
func add (val: [Int]) -> Int {
    var result = 0;
    for i in val {
        result += i
    }
    return result
}

func mul (val: [Int]) -> Int {
    var result = 1;
    for i in val {
        result *= i
    }
    return result
}

func count (val: [Int]) -> Int {
    return val.count
}

func average (val: [Int]) -> Int {
    var sum = 0
    for i in val {
        sum += i
    }
    return sum / val.count
}

func arithmetic (val: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(val)
}

/*
 * Tuple Calculator
 */
func checkTuple(tup: Any?) -> Bool {
    return tup is (NSNumber, NSNumber)
}

func add (point1: (Int, Int), point2: (Int, Int)) -> (Int,Int) {
    if (checkTuple(tup: point1) && checkTuple(tup: point2)) {
        return (add(first: point1.0, second: point2.0), add(first: point1.1, second: point2.1))
    }
    return (0,0)
}

func subtract (point1: (Int, Int), point2: (Int, Int)) -> (Int, Int) {
    if (checkTuple(tup: point1) && checkTuple(tup: point2)) {
        return (subtract(first: point1.0, second: point2.0), subtract(first: point1.1, second: point2.0))
    }
    return (0,0)
}

/*
 * Points calculator
 */
func verify (point1: [String: Any]?, point2: [String: Any]?) -> Bool{
    var valid = false
    if (point1 != nil && point2 != nil) {
        if (point1!["x"] != nil && point1!["y"] != nil && point1!["x"] != nil && point1!["y"] != nil) {
            valid = true
        }
    }
    return valid
}

func add (point1: [String: Double]?, point2: [String: Double]?) -> [String : Double]? {
    if (verify(point1: point1, point2: point2)) {
        return ["x" : point1!["x"]! + point2!["x"]!, "y" : point1!["y"]! + point2!["y"]!]
    }
    return nil
}

func subtract (point1: [String: Double]?, point2: [String: Double]?) -> [String : Double]? {
    if (verify(point1: point1, point2: point2)) {
        return ["x" : point1!["x"]! - point2!["x"]!, "y" : point1!["y"]! - point2!["y"]!]
    }
    return nil
}

func add (point1: [String: Int]?, point2: [String: Int]?) -> [String : Int]? {
    if (verify(point1: point1, point2: point2)) {
        return ["x" : point1!["x"]! + point2!["x"]!, "y" : point1!["y"]! + point2!["y"]!]
    }
    return nil
}

func subtract (point1: [String: Int]?, point2: [String: Int]?) -> [String : Int]? {
    if (verify(point1: point1, point2: point2)) {
        return ["x" : point1!["x"]! - point2!["x"]!, "y" : point1!["y"]! - point2!["y"]!]
    }
    return nil
}

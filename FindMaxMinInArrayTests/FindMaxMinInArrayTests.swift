//
//  FindMaxMinInArrayTests.swift
//  FindMaxMinInArrayTests
//
//  Created by Arifin Firdaus on 13/12/22.
//

import XCTest

struct Program {
    func findMaxMin(in array: [Int]) -> [Int] {
        
        if array.isEmpty {
            return []
        }
        
        if array.count == 1 {
            guard let value = array.first else {
                return []
            }
            return [value, value]
        } else {
            return find(in: array)
        }
    }
    
    private func find(in array: [Int]) -> [Int] {
        return [
            findMin(in: array),
            findMax(in: array)
        ]
    }
    
    private func findMin(in array: [Int]) -> Int {
        var minValue = array[0]
        
        for number in array {
            if number < minValue {
                minValue = number
            }
        }
        
        return minValue
    }
    
    private func findMax(in array: [Int]) -> Int {
        var maxValue = array[0]
        
        for number in array {
            if number > maxValue {
                maxValue = number
            }
        }
        
        return maxValue
    }
}

final class FindMaxMinInArrayTests: XCTestCase {

    func test_findMaxMin_deliversEmptyOnEmptyArray() {
        let emptyArray = [Int]()
        let sut = Program()
        
        let result = sut.findMaxMin(in: emptyArray)
        
        XCTAssertEqual(result, emptyArray)
    }
    
    func test_findMaxMin_deliversMaxMinValueOnSingleArrayItem() {
        let array = [1]
        let sut = Program()
        
        let result = sut.findMaxMin(in: array)
        
        XCTAssertEqual(result, [1, 1])
    }
    
    func test_findMaxMin_deliversMaxMinValueOn2ArrayItems() {
        let array = [1, 2]
        let sut = Program()
        
        let result = sut.findMaxMin(in: array)
        
        XCTAssertEqual(result, [1, 2])
    }
    
    func test_findMaxMin_deliversMaxMinValueOn2ArrayItemsWhenArrayIsNotOrdered() {
        let array = [2, 1]
        let sut = Program()
        
        let result = sut.findMaxMin(in: array)
        
        XCTAssertEqual(result, [1, 2])
    }
    
    func test_findMaxMin_succeedsonLongArraySampleItems() {
        let array = [199, 201, 300, 400, 500]
        let sut = Program()
        
        let result = sut.findMaxMin(in: array)
        
        XCTAssertEqual(result, [199, 500])
    }
}

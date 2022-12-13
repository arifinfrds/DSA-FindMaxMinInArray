//
//  FindMaxMinInArrayTests.swift
//  FindMaxMinInArrayTests
//
//  Created by Arifin Firdaus on 13/12/22.
//

import XCTest

struct Program {
    func findMaxMin(in array: [Int]) -> [Int] {
        
        if array.count == 1 {
            guard let value = array.first else {
                return []
            }
            return [value, value]
        } else {
            
            let sortedArray = array.sorted()
            guard let minValue = sortedArray.first, let maxValue = sortedArray.last else {
                return []
            }
            return [minValue, maxValue]
        }
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
}

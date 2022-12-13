//
//  FindMaxMinInArrayTests.swift
//  FindMaxMinInArrayTests
//
//  Created by Arifin Firdaus on 13/12/22.
//

import XCTest

struct Program {
    func findMaxMin(in array: [Int]) -> [Int] {
        return []
    }
}

final class FindMaxMinInArrayTests: XCTestCase {

    func test_findMaxMin_deliversEmptyOnEmptyArray() {
        let emptyArray = [Int]()
        let sut = Program()
        
        let result = sut.findMaxMin(in: emptyArray)
        
        XCTAssertEqual(result, emptyArray)
    }
}

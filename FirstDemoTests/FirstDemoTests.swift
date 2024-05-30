//
//  FirstDemoTests.swift
//  FirstDemoTests
//
//  Created by Ramazan Gasratov on 17.05.2024.
//

import XCTest
@testable import FirstDemo

final class FirstDemoTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_numberOfVowels_whenGivenDominik_shouldReturn3() {
    let viewController = ViewController()
    let result = viewController.numberOfVowels(in: "Dominik")
    XCTAssertEqual(result, 3,
    "Expected 3 vowels in 'Dominik' but got \(result)")
    
    }
    
    func test_dictsAreQual() {
//    let dict1 = ["id": "2", "name": "foo"]
//    let dict2 = ["id": "2", "name": "fo"]
        
      
                let dict1 = ["a": 1, "b": 2, "c": 3]
                let dict2 = ["a": 1, "b": 2, "c": 3]
                let dict3 = ["a": 1, "b": 2]
                let dict4 = ["a": 1, "b": 2, "c": 4]
                
                // Эти словари равны
                DDHAssertEqual(dict1, dict2)
                
                // Эти словари не равны по ключам
//                DDHAssertEqual(dict1, dict3)
                
                // Эти словари не равны по значениям
//                DDHAssertEqual(dict1, dict4)
            

//    DDHAssertEqual(dict1, dict2)
        
//    XCTAssertEqual(dict1, dict2)
    // Log output:
    // XCTAssertEqual failed: ("["name": "foo", "id": "2"]")...
    // ...is not equal to ("["name": "fo", "id": "2"]")
    }
    
    func assertKeysEqual<Key: Equatable, Value>(dict1: [Key: Value], dict2: [Key: Value], file: StaticString = #file, line: UInt = #line) {
        let keys1 = Set(dict1.keys)
        let keys2 = Set(dict2.keys)
        
        XCTAssertEqual(keys1, keys2, "Dictionary keys are not equal", file: file, line: line)
    }
    
//    func DDHAssertEqual<A: Equatable, B: Equatable>(
//        _ first: [A:B],
//        _ second: [A:B],
//        file: StaticString = #filePath,        // << new
//        line: UInt = #line) {                  // << new
//            if first == second {
//                return
//            }
//            for key in first.keys {
//                if first[key] != second[key] {
//                    let value1 = String(describing: first[key]!)
//                    let value2 = String(describing: second[key]!)
//                    let keyValue1 = "\"\(key)\": \(value1)"
//                    let keyValue2 = "\"\(key)\": \(value2)"
//                    let message = "\(keyValue1) is not equal to \(keyValue2)"
//                    XCTFail(message, file: file, line: line)  // << new
//                    return
//                }
//            }
//        }
    
    func DDHAssertEqual<Key: Equatable, Value: Equatable>(_ dict1: [Key: Value], _ dict2: [Key: Value], file: StaticString = #file, line: UInt = #line) {
        // Проверка ключей
        assertKeysEqual(dict1: dict1, dict2: dict2, file: file, line: line)
        
        // Проверка значений
        for (key, value1) in dict1 {
            if let value2 = dict2[key] {
                XCTAssertEqual(value1, value2, "Values for key \(key) are not equal", file: file, line: line)
            }
        }
    }
}



//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import XCTest

final class ConvertersTests: XCTestCase {
    /// AAA: Arrange - Act - Assert

    private var converter: Converters!

    // Will be occur before the func
    override func setUpWithError() throws {
        converter = Converters()
    }

    // Will be occur after the func
    override func tearDownWithError() throws {
        converter = nil
    }


    // Create a simple conversion with a positive number
    func test_convert10_return1080() {
        let actual = converter.convertEuroToUSD(euro: "10")
        let expected = "$10.80"

        XCTAssertEqual(actual, expected)
    }

    // Negative numbers return an error message
    func test_convertNeg10_retunrsErrorMessage() {
        let actual = converter.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number"
        XCTAssertEqual(actual, expected)
    }

}

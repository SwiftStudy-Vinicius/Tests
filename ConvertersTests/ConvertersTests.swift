//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import XCTest

final class ConvertersTests: XCTestCase {

    // Create a simple conversion with a positive number
    func test_convert10_return1080() {
        let converter = Converters()

        let actual = converter.convertEuroToUSD(euro: "10")
        let expected = "$10.80"

        XCTAssertEqual(actual, expected)
    }

    // Negative numbers return an error message
    func test_convertNeg10_retunrsErrorMessage() {
        let converter = Converters()

        let actual = converter.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number"
        XCTAssertEqual(actual, expected)
    }

}

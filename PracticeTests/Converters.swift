//
//  Converters.swift
//  PracticeTests
//
//  Created by Vinícius Flores Ribeiro on 28/02/23.
//

import Foundation

class Converters {
    func convertEuroToUSD(euro: String) -> String {
        let usdRate = 1.08
        let euroValue = Double(euro) ?? 0

        if euroValue <= 0 {
            return "Please enter a positive number"
        }

        if euroValue >= 1_000_000 {
            return "Value too big to convert!"
        }

        return "$\(String(format: "%.2f", euroValue * usdRate))"
    }
}

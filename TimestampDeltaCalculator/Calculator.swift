//
//  Calculator.swift
//  TimestampDeltaCalculator
//
//  Created by dimitar on 21/12/2022.
//

import Foundation

func timeDelta(start: String, end: String) -> String {
    // Convert the start and end timestamps to NSDate objects
    let dateFormatter = DateFormatter()
    if start.count < 11 {
        dateFormatter.dateFormat = "mm:ss.SSS"
    } else {
        dateFormatter.dateFormat = "HH:mm:ss.SSS"
    }
    let startDate = dateFormatter.date(from: start)
    let endDate = dateFormatter.date(from: end)

  // Calculate the time delta between the two dates
    let timeDelta = endDate?.timeIntervalSince(startDate!)
    let outputDelta = String(format: "%.3f", timeDelta!)
    return(outputDelta)
}

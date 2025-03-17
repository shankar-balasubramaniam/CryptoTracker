//
//  StatisticModel.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 17/03/25.
//

import Foundation

struct StatisticModel: Identifiable {
    let id = UUID().uuidString
    let title: String
    let value: String
    let percentageChange: Double?
    
    static let testStat1 = StatisticModel(title: "Market Cap", value: "$12.5Bn", percentageChange: 25.34)
    static let testStat2 = StatisticModel(title: "Total Volume", value: "$1.23Tr")
    
    init(title: String, value: String, percentageChange: Double? = nil) {
        self.title = title
        self.value = value
        self.percentageChange = percentageChange
    }
}

//
//  String.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 19/03/25.
//

import Foundation

extension String {
    var removingHTMLOccurences: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression)
    }
}

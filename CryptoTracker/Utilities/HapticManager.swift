//
//  HapticManager.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 18/03/25.
//

import Foundation
import SwiftUI

class HapticManager {
    static private let generator = UINotificationFeedbackGenerator()
    
    static func nottification(type: UINotificationFeedbackGenerator.FeedbackType) {
        generator.notificationOccurred(type)
    }
}

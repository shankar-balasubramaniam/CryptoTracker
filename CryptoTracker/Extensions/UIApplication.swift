//
//  UIApplication.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 14/03/25.
//

import Foundation
import SwiftUI

extension UIApplication {
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}

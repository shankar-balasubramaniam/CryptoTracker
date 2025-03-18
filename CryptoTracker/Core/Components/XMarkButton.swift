//
//  XMarkButton.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 17/03/25.
//

import SwiftUI

struct XMarkButton: View {
    let onPress: () -> Void
    
    var body: some View {
        Button {
            print("dismissing")
            onPress()
        } label: {
            Image(systemName: "xmark")
                .font(.headline)
        }
    }
}

#Preview {
    XMarkButton {
        
    }
}

//
//  CoinImageView.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 05/03/25.
//

import SwiftUI

struct CoinImageView: View {
    @StateObject var vm: CoinImageViewModel
    
    init(coin: CoinModel) {
        _vm = StateObject(wrappedValue: CoinImageViewModel(coin: coin))
    }
    
    var body: some View {
        ZStack {
            if let image = vm.image {
                Image(uiImage: image)
                    .resizable()
                    .scaledToFit()
            } else if vm.isLoading {
                ProgressView()
            } else {
                Image(systemName: "questionmark")
            }
        }
    }
}

#Preview {
    CoinImageView(coin: CoinModel.testCoin)
}

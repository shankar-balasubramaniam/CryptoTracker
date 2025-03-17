//
//  HomeViewModel.swift
//  CryptoTracker
//
//  Created by Shankar Balasubramaniam on 26/02/25.
//

import Foundation
import Combine

class HomeViewModel: ObservableObject {
    // Only for testing in Previews
    static let test = HomeViewModel()
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    @Published var searchText: String = ""
    
    private let dataService = CoinDataService()
    private var cancellables = Set<AnyCancellable>()
    
    init() {
        addSubscribers()
    }
    
    func addSubscribers() {
        dataService.$allCoins.sink { [weak self] returnedCoins in
            self?.allCoins = returnedCoins
        }
        .store(in: &cancellables)
    }
}

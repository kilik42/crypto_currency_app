//
//  HomeViewModel.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/25/22.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    
    @Published var coins = [Coin]()
    @Published var topMovingCoins = [Coin]()
    
    init(){
        fetchCoinData()
    }
    func fetchCoinData(){
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Debug: Error \(error.localizedDescription)")
                return
            }
            
            if let response = response as? HTTPURLResponse{
                print("DEBUG: Response code \(response.statusCode)")
                

            }
            
            guard let data = data else{return }
//            let dataAsString = String(data: data, encoding: .utf8)
//            print("Debug: data \(dataAsString)")
            
            do {
                let coins = try JSONDecoder().decode([Coin].self, from : data)
//                self.coins = coins
                DispatchQueue.main.async{
                    self.coins = coins
                    self.configureTopMovingCoins()
                }// so it is on the main thread not the back ground thread
            } catch let error {
                print("debug: failure  to decode with error: \(error)")
            }
            
        }.resume()

    }
    
    
    func configureTopMovingCoins(){
        let topMovers = coins.sorted(by: {$0.priceChangePercentage24H > $1.priceChangePercentage24H})
        
        self.topMovingCoins = Array(topMovers.prefix(5))
    }
    
    
}

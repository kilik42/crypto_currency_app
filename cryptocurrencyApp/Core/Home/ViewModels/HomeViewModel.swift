//
//  HomeViewModel.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/25/22.
//

import SwiftUI

class HomeViewModel: ObservableObject{
    func fetchCoinData(){
        let urlString = "https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=true&price_change_percentage=24h"
        
        guard let url = URL(string: urlString) else {return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Debug: Error \(error.localizedDescription)")
                return
            }
            
            
            guard let data = data else{return }
        }

    }
    
    
}

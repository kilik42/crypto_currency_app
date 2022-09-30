//
//  Double.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/30/22.
//

import Foundation

extension Double {
    private var currencyFormatter: NumberFormatter{
        let formatter = NumberFormatter()
        formatter.usesGroupingSeparator = true
        formatter.numberStyle = .currency
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        return formatter
    }
    
    func toCurrencyWith2Decimals(){
        
    }
}

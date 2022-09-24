//
//  AllCoinsView.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/24/22.
//

import SwiftUI

struct AllCoinsView: View {
    var body: some View {
        VStack{
            Text("All Coins")
                .font(.headline)
            
            HStack{
                Text("Coin")
                    
                
                Spacer()
                
                Text("Prices")
            }
            .foregroundColor(.gray)
            .font(.caption)
            .padding(.horizontal)
        }
        
        
    }
}

struct AllCoinsView_Previews: PreviewProvider {
    static var previews: some View {
        AllCoinsView()
    }
}

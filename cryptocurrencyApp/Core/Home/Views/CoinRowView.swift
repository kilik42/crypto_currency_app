//
//  CoinRowView.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/24/22.
//

import SwiftUI

struct CoinRowView: View {
    var body: some View {
        HStack{
            //market cap rank
            Text("1")
                .font(.caption)
                .foregroundColor(.gray)
            
            
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
            //coin name info
            
            
            //coin price info
            
            
            
            
        }
    }
}

struct CoinRowView_Previews: PreviewProvider {
    static var previews: some View {
        CoinRowView()
    }
}

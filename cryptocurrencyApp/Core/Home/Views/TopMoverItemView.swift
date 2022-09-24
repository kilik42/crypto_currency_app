//
//  TopMoverItemsView.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/24/22.
//

import SwiftUI

struct TopMoverItemView: View {
    var body: some View {
        VStack{
            //image
            Image(systemName: "bitcoinsign.circle.,fill")
                .resizable()
                .frame(width:32, height: 32)
                .foregroundColor(.orange)
            
            //coin info
            HStack{
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            
            //coin percent change
        }
    }
}

struct TopMoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoverItemView()
    }
}

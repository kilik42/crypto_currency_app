//
//  TopMoverItemsView.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/24/22.
//

import SwiftUI

struct TopMoverItemView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4){
            //image
            Image(systemName: "bitcoinsign.circle.fill")
                .resizable()
                .frame(width:32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)
            
            //coin info
            HStack(spacing: 2){
                Text("BTC")
                    .font(.caption)
                    .fontWeight(.bold)
                
                Text("$20,330.00")
                    .font(.caption)
                    .foregroundColor(.gray)
            }
            
            
            //coin percent change
            
            Text("+ 5.60%")
                .font(.title2)
                .foregroundColor(.green)
        }
        .frame(width :140, height: 140)
        .overlay(
           RoundedRectangle(cornerRadius: 10)
            .stroke(Color(.systemGray4), lineWidth: 2)
        )
        
    }
}

struct TopMoverItemView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoverItemView()
    }
}

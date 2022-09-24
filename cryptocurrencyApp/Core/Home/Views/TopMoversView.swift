//
//  TopMoversView.swift
//  cryptocurrencyApp
//
//  Created by marvin evins on 9/24/22.
//

import SwiftUI

struct TopMoversView: View {
    var body: some View {
        VStack(alignment: .leading ){
            Text("Top Movers")
                .font(.headline)
            
            ScrollView(.horizontal){
                HStack{
                    ForEach(0 ..< 5, id: \.self){_ in
                        TopMoverItemView()
                    }
                }
            }
        }
        
    }
}

struct TopMoversView_Previews: PreviewProvider {
    static var previews: some View {
        TopMoversView()
    }
}

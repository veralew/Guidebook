//
//  ZooCard.swift
//  Guidebook
//
//  Created by Vera Lew on 7/2/24.
//

import SwiftUI

struct ZooAreaCard: View {
    
    var area: ZooArea
    
    var body: some View {
        
        ZStack {
            
            Rectangle()
                .background {
                    Image(area.imageName)
                        .resizable()
                        .cornerRadius(15)
                        .aspectRatio(contentMode: .fill)
                }
                .foregroundColor(.clear)
                .cornerRadius(15)
            
            
            Rectangle()
                .foregroundColor(.black)
                .opacity(0.5)
                .cornerRadius(15)
            
            VStack (alignment: .leading){
                    Text(area.name)
                        .font(.largeTitle)
                        .bold()
                
                Spacer()
                Text(area.summary)
                
            }
            .foregroundColor(.white)
            .padding()
            .multilineTextAlignment(.leading)
            
        }
        .frame(height: 400)
        
       
    }
}

#Preview {
    ZooAreaCard(area: ZooArea(name: "African Savanna", summary: "Tokyo serves as Japan's economic center and is the seat of both the Japanese government and the Emperor of Japan. Tokyo.", imageName: "Africansavanna", attractions: [Attraction]()))
}

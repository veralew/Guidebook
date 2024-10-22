//
//  DetailView.swift
//  Guidebook
//
//  Created by Vera Lew on 6/29/24.
//

import SwiftUI

struct DetailView: View {
    
    var attraction: Attraction
    //var area: ZooArea
    
    var body: some View {
        
        //Text(area.name)
        VStack (spacing: 30){
            
            Image(attraction.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 210)
                .frame(width: 350)
                .cornerRadius(20)
            
            ScrollView (showsIndicators: false){
                
                VStack (alignment: .leading, spacing: 20){
                    
                    Text(attraction.name)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .bold()
                    Text(attraction.sciName)
                        .italic()
                    Text(attraction.longDescription)
                        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    
                    
                    //Create URL instance based on URL scheme
                    if let url = URL (string: "http://maps.google.com/?q=\(cleanCoords(latLong: attraction.latLong))")
                    {
                        //Test URL if it can be opened
                        if UIApplication.shared.canOpenURL(url){
                            
                            Button(action: {
                                //Open URL
                                UIApplication.shared.open(url)
                                
                            }, label: {
                                ZStack{
                                    RoundedRectangle(cornerRadius: 15.0)
                                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                                        .frame(height: 40)
                                    
                                    Text("Get Directions")
                                        .foregroundStyle(.white)
                                }
                                .padding(.bottom, 30)
                            })
                            
                        }
                    }
                    
                }
                .padding(.horizontal, 20)
            }
            .ignoresSafeArea()
            
            
        }
    }
    
    func cleanName(name: String) -> String {
        return name.replacingOccurrences(of: " ", with: "+").folding(options: .diacriticInsensitive, locale: .current)
    }
    
    func cleanCoords(latLong: String) -> String {
        return latLong.replacingOccurrences(of: ", ", with: ",")
    }
    
}

#Preview {
    DetailView(attraction: Attraction(name: "Masai Giraffe",
                                      sciName: "Giraffa tippelskirchi",
                                      summary: "Growing up to around 20 feet tall, Masai giraffes are distinguished by their jagged brown spots.",
                                      
                                      longDescription: "Lifespan: 10–15 years in the wild, 20–27 years in human care\r\rHeight: 18 feet\r\rWeight: 1500-4000 pounds\r\rGeo Range & Biome: East Africa, open woodlands and dry savannas, avoid closed canopy forests\r\rFacts:\r- Easily distinguished from other giraffes by the jagged, irregularly shaped brown patches on their hide\r- Their six-foot-long necks enable them to eat leaves, flowers, and twigs that most animals cannot reach\r- Giraffes have seven neck vertebrae, with each possibly reaching over 10 inches long\r\rDiet: leaves, bark, twigs, flowers, and fruits\r\rConservation Status: endangered, only about 35,000 individuals remaining.",
                                      
                                      imageName: "giraffe",
                                      latLong: "38.53840610016001, -121.50370744999638"))
}

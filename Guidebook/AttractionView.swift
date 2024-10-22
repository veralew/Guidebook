//
//  AttractionView.swift
//  Guidebook
//
//  Created by Raymond Lew on 6/29/24.
//

import SwiftUI

struct AttractionView: View {
    
    var area: ZooArea
    
    var body: some View {
        
        Text(area.name)
        
        ScrollView (showsIndicators: false){
            VStack{
                ForEach(area.attractions) { attraction in
                    
                    NavigationLink {
                        DetailView(attraction: attraction)
                    } label: {
                        AttractionRow(attraction: attraction)
                            .padding(.bottom, 50)
                    }
                    .buttonStyle(.plain)
                    
                    
                }
            }
            .padding(.horizontal, 30)
           // .foregroundColor(.black)
            
        }
    }
}

#Preview {
    AttractionView(area: ZooArea(name: "Rome",
                              summary: "Rome is the capital area of Italy. It is also the capital of the Lazio region, the centre of the Metropolitan area of Rome, and a special comune named Comune di Roma Capitale.",
                              imageName: "rome",
                              attractions: [
                                 Attraction(name: "Pantheon",
                                            sciName: "giraffe",
                                            summary: "The Pantheon is a former Roman temple and, since 609 AD, a Catholic church in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus.",
                                            longDescription: """
         The Pantheon from Greek is a former Roman temple and, since 609 AD, a Catholic church (Basilica di Santa Maria ad Martyres or Basilica of St. Mary and the Martyrs) in Rome, Italy, on the site of an earlier temple commissioned by Marcus Agrippa during the reign of Augustus (27 BC – 14 AD). It was rebuilt by the emperor Hadrian and probably dedicated c. 126 AD. Its date of construction is uncertain, because Hadrian chose not to inscribe the new temple but rather to retain the inscription of Agrippa's older temple, which had burned down.
         """,
                                            imageName: "meer", latLong: "41.898762500696236, 12.476915812472798")
                              ]))
}

//
//  City.swift
//  Guidebook
//
//  Created by Raymond Lew on 6/30/24.
//

import Foundation

struct ZooArea: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
    
}

//
//  Attraction.swift
//  Guidebook
//
//  Created by Raymond Lew on 6/30/24.
//

import Foundation

struct Attraction: Identifiable, Decodable {
    
    let id = UUID()
    var name: String
    var sciName: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String
    
}

//
//  DataService.swift
//  Guidebook
//
//  Created by Vera Lew on 6/29/24.
//

import Foundation

struct DataService {
    
    func getFileData() -> [ZooArea] {
        
        // Get file path to DemoData.json
        if let url = Bundle.main.url(forResource: "DemoData", withExtension: "json") {

            do {
                // Read file and turn into data
                let data = try Data(contentsOf: url)
                
                // Parse data into Swift instances
                let decoder = JSONDecoder()
                
                do {
                    let cities = try decoder.decode([ZooArea].self, from: data)
                    return cities
                }
                catch {
                    print("Could not parse the JSON: \(error)")
                }
                
            }
            catch {
                print("Could not read the file: \(error)")
            }
            
            
            
        }
        
        return [ZooArea]()
        
    }
    
}

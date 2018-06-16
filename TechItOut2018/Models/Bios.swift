//
//  Bios.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 6/10/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SwiftyJSON

class Bios: NSObject {
    var bios = [Bio]()
    
    func readBios(){
        let filePath = Bundle.main.path(forResource: "bios", ofType: "json")
        guard filePath != nil else {
            return
        }
        do {
            let data = try Data.init(contentsOf: URL(fileURLWithPath: filePath!))
            let json = try JSON.init(data: data)
            for (_,subJson):(String, JSON) in json {
                // Do something you want
                let bio = Bio()
                bio.name = subJson["Name"].stringValue
                bio.profileDescription = subJson["Bio"].stringValue
                bio.imageName = subJson["Image"].stringValue
                bio.designation = subJson["Designation"].stringValue
                
                self.bios.append(bio)
            }
        }
        catch {
            print(error.localizedDescription)
        }
        
    }
    
}

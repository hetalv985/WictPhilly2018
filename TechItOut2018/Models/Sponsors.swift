//
//  Sponsors.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 6/24/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SwiftyJSON

class Sponsors: NSObject {
    var sponsors = [Sponsor]()
    
    func readSponsors(){
        let filePath = Bundle.main.path(forResource: "sponsors", ofType: "json")
        guard filePath != nil else {
            return
        }
        do {
            let data = try Data.init(contentsOf: URL(fileURLWithPath: filePath!))
            let json = try JSON.init(data: data)
            for (_,subJson):(String, JSON) in json {
                // Do something you want
                let sponsor = Sponsor()
                sponsor.title = subJson["Title"].stringValue
                sponsor.logos = subJson["Sponsors"].arrayValue.map {$0.stringValue}
                self.sponsors.append(sponsor)
            }
        }
        catch {
            print(error.localizedDescription)
        }
        
    }
}

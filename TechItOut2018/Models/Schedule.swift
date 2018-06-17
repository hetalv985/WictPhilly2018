//
//  Schedule.swift
//  TechItOut2018
//
//  Created by Vora, Hetal (Contractor) on 5/27/18.
//  Copyright © 2018 Vora, Hetal (Contractor). All rights reserved.
//

import UIKit
import SwiftyJSON

class Schedule: NSObject {
    var scheduleItems = [ScheduleItem]()
    
    func readSchedule(){
        let filePath = Bundle.main.path(forResource: "schedule", ofType: "json")
        guard filePath != nil else {
            return
        }
        do {
            let data = try Data.init(contentsOf: URL(fileURLWithPath: filePath!))
            let json = try JSON.init(data: data)
            for (_,subJson):(String, JSON) in json {
                // Do something you want
                let scheduleItem = ScheduleItem()
                scheduleItem.title = subJson["Title"].stringValue
                scheduleItem.subTitle = subJson["Subtitle"].stringValue
                scheduleItem.speakers = subJson["Speakers"].stringValue
                scheduleItem.time = subJson["Time"].stringValue
                scheduleItem.location = subJson["Location"].stringValue
                scheduleItem.label = subJson["Label"].stringValue
                self.scheduleItems.append(scheduleItem)
            }
        }
        catch {
            print(error.localizedDescription)
        }
        
    }
    
}

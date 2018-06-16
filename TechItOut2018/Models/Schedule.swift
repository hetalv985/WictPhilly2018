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
                for (_,trackJson) in subJson["Tracks"] {
                    let track = Track()
                    track.name = trackJson["Track"].stringValue
                    for (_,sessionJson) in trackJson["Sessions"] {
                        let sessionItem = Session()
                        sessionItem.title = sessionJson["Title"].stringValue
                        sessionItem.speakers = sessionJson["Speakers"].stringValue
                        sessionItem.location = sessionJson["Location"].stringValue
                        track.sessions.append(sessionItem)
                    }
                    scheduleItem.tracks.append(track)
                }
                self.scheduleItems.append(scheduleItem)
            }
        }
        catch {
            print(error.localizedDescription)
        }
        
    }
    
}

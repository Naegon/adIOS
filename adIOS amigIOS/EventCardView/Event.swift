//
//  Event.swift
//  adIOS amigIOS
//
//  Created by user189564 on 17/03/2021.
//

import Foundation

 

struct Event: Identifiable, Decodable{
    var id = UUID()
    
    let startTime : String
    let endTime : String
    let title : String
    let speaker : String
    let eventType : String
    
    static let example = Event(startTime: "07/04/2021 14H00",endTime :"07/04/2021 16H00", title: "Swimming pool", speaker: "Todd", eventType: "Label")
}

struct EventAPIList : Decodable{
    var records : [Event]
}



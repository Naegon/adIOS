//
//  Event.swift
//  adIOS amigIOS
//
//  Created by user189564 on 17/03/2021.
//
//https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=keyAviolHRTfDJ7dd
/*
 "records": [
     {
       "id": "rec2h6SsWsB0ijrNd",
       "fields": {
         "Activity": "Closing remarks",
         "Start": "2021-11-19T16:00:00.000Z",
         "Type": "Keynote",
         "Speaker(s)": [
           "recyOI1lvVVgkvXag"
         ],
         "Location": "Grand ballroom",
         "Notes": "Expecting a lower turnout because it's the 2nd day",
         "End": "2021-11-19T16:15:00.000Z"
       },
       "createdTime": "2016-10-30T21:41:29.000Z"
     },
 */
import Foundation

struct Event : Codable {
    var id : String
    var fields : Fields
    var createdTime : String
    enum CodingKeys: String,CodingKey {
        case id = "id"
        case fields = "fields"
        case createdTime = "createdTime"
    }
}

struct Fields : Codable{
    var Activity: String
    var Start : String
    var type : String
    var Speakers: [String]?
    var Location : String
    var Notes : String
    var End : String
    enum CodingKeys:String, CodingKey {
        case Activity = "Activity"
        case Start = "Start"
        case type = "Type"
        case Speakers = "Speaker(s)"
        case Location = "Location"
        case Notes = "Notes"
        case End = "End"
    }
}
struct Response : Codable {
    var Events : [Event]
}




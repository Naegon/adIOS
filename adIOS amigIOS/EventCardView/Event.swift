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
// MARK: - Welcome
struct Welcome: Codable {
    let records: [Record]
}

// MARK: - Record
struct Record: Codable {
    let id: String
    let fields: Fields
    let createdTime: String
}

// MARK: - Fields
struct Fields: Codable {
    let activity, start, type: String
    let speakerS: [String]?
    let location: String
    let notes: String?
    let end: String

    enum CodingKeys: String, CodingKey {
        case activity = "Activity"
        case start = "Start"
        case type = "Type"
        case speakerS = "Speaker(s)"
        case location = "Location"
        case notes = "Notes"
        case end = "End"
    }
}

//
//  EventApiList.swift
//  adIOS amigIOS
//
//  Created by user189522 on 4/3/21.
//

import Foundation

struct EventAPIList : Decodable{
    var res : [Records]
}
struct Records : Decodable, Identifiable{
    let id : String
    let fields : Fields?
}

struct Fields : Decodable,Identifiable {
    let Activity = String	
    let Start = String
    let Type = String
    let Speakers = String
    let Location = String
    let Notes = String	
    let End = String
}
/*{
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
    {
      "id": "rec31QbfjY330wWWE",
      "fields": {
        "Activity": "Welcome breakfast",
        "Start": "2021-11-18T09:00:00.000Z",
        "Type": "Meal",
        "Location": "President's dining hall",
        "End": "2021-11-18T10:30:00.000Z"
      },
      "createdTime": "2016-10-30T21:17:58.000Z"
    },
*/

//
//  Fields.swift
//  adIOS amigIOS
//
//  Created by user189522 on 4/3/21.
//

import Foundation

struct Fields {
    let Activity : String
    let Start : String
    let Types : String
    let Speakers : [String]?
    let Location : String
    let Notes : String
    let End : String
    
    init?(json:JSONDecoder) {
        guard let Activity = json["Activity"] as? String,
              let Start = json["Start"] as? String,
              let Types = json["Type"] as? String,
              let Speakers = json["Speaker(s)"] = as? [String],
        
        
        
        else {
            <#statements#>
        }
    }
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
*/

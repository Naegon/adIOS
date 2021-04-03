//
//  DataService.swift
//  adIOS amigIOS
//
//  Created by user189522 on 4/3/21.
//

import Foundation

class DataService {
    private init(){}
    static let shared = DataService()
    
    func getData(completion:(Data) -> Void){
        guard let path = Bundle.main.path(forResource: "JSONDATA", ofType: "txt") else
        {
            return
        }
        let url = URL(fileURLWithPath: path)
        do{
            let data = try Data(contentsOf: url)
            completion(data)
        }catch{
            print(error)
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
   },*/

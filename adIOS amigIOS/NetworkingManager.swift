//
//  NetworkingManager.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 07/04/2021.
//

import Foundation

class NetworkingManager {
//    var eventList: Schedule
    private let ApiKey = "keyAviolHRTfDJ7dd"
    
    init() {
//        let url = "https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=" + ApiKey
//        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {(data, response, error) in
//            guard let data = data else {
//                print("error")
//                return
//            }
//            //hava data
//            do {
//                self.eventList = try JSONDecoder().decode(Schedule.self, from: data)
//            }
//            catch {
//                print("fail (error.localizedDescription)")
//            }
//        })
//        task.resume()
        
//        if let url = URL(string: "https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=" + ApiKey) {
//            URLSession.shared.dataTask(with: url) { data, response, error in
//                if let data = data {
//                    if let jsonString = String(data: data, encoding: .utf8) {
//                        print(jsonString)
//                    }
//                }
//            }.resume()
//        }
        
        if let url = URL(string: "https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=" + ApiKey) {
           URLSession.shared.dataTask(with: url) { data, response, error in
              if let data = data {
                  do {
                      let schedule = try JSONDecoder().decode(Schedule.self, from: data)
                      print(schedule.records[0].id)
                  } catch let error {
                      print(error)
                  }
              }
           }.resume()
        }
    }
}

//    func getSchedule(completionHandler: @escaping (Schedule) -> Void){
//            let url = "https://api.airtable.com/v0/appXKn0DvuHuLw4DV/Schedule?api_key=" + ApiKey
//
//            let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: {data, response, error in
//                guard let data = data, error == nil else {
//                    print("something went wrong")
//                    return
//                }
//
//
//                var resultSchedule: Schedule?
//
//                do {
//                    resultSchedule = try JSONDecoder().decode(Schedule.self, from: data)
//                    print(resultSchedule?.records[0].id ?? "Something went wrong")
//
//                    //resultScheduleRecords = try JSONDecoder().decode(ScheduleRecord.self, from: resultSchedule)
//                    //resultScheduleRecordFields = try JSONDecoder().decode(resultScheduleRecordFields.self, from: resultScheduleRecords)
//                }
//                catch{
//                    print("failed to convert : \(error.localizedDescription)")
//                }
//
//                guard let json = resultSchedule else{
//                    return
//                }
//
//                //print(json.records.count)
//
//                //print(String(decoding: data, as: UTF8.self))
//
//                completionHandler(json)
//
//            })
//            task.resume()
//        }

//
//  NetworkingManager.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 07/04/2021.
//

import Foundation

final class NetworkingManager: ObservableObject {
    @Published var eventList: Schedule = Schedule(records: [])
    private let ApiKey = "keyAviolHRTfDJ7dd"

    
    func getSchedule() {
        if let url = URL(string: "https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=" + ApiKey) {
            URLSession.shared.dataTask(with: url) { data, response, error in
                if let data = data {
                    do {
                        self.eventList = try JSONDecoder().decode(Schedule.self, from: data)
                        print(self.eventList.records[0].id)
                    } catch let error {
                        print(error)
                    }
                }
            }.resume()
        }
    }
}

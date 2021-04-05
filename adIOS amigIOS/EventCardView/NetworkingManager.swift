//
//  NetworkingManager.swift
//  adIOS amigIOS
//
//  Created by user187166 on 3/31/21.
//

import Foundation
import SwiftUI
import Combine


class NetworkingManager {
    var EventList : Welcome
    
    init(){
        let url = "https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=keyAviolHRTfDJ7dd"
        let task = URLSession.shared.dataTask(with: URL(string: url)!, completionHandler: { data, response, error in
            guard let data = data, error == nil else{
                print("error")
                return
            }
            //hava data

            do{
                self.EventList = try JSONDecoder().decode(Welcome.self, from: data)
                self.EventList.records[0].fields.activity

            }
            catch{
                print("fail (error.localizedDescription)")
            }


        })

        task.resume()}
}



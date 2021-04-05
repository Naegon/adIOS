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
    var didchange = PassthroughSubject<NetworkingManager,Never>()
    var EventList = Response(Events: [])
    {
        didSet{
            didchange.send(self)
        }
    }
    
    init(){
        guard let url = URL(string:"https://api.airtable.com/v0/appFNA7TTiTELt8Dh/%F0%9F%93%86%20Schedule?api_key=keyAviolHRTfDJ7dd") else {return} //API URL
        URLSession.shared.dataTask(with: url){(data, response, error) in
            guard let data = data else {return}
            
            let EventList = try! JSONDecoder().decode(Response.self, from: data)
            DispatchQueue.main.async {
                self.EventList = EventList
            }
        }.resume()
    }
}

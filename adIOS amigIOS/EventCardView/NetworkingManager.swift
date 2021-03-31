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
    var EventList = EventAPIList(result: [])
    {
        didSet{
            didchange.send(self)
        }
    }
    
    init(){
        guard let url = URL(string: ) else {return} //API URL
        URLSession.shared.dataTask(with: url){(data, _, _) in
            guard let data = data else {return}
            
            let EventList = try! JSONDecoder().decode(EventAPIList.self, from: data)
            DispatchQueue.main.async {
                self.EventList = EventList
            }
        }.resume
    }
}

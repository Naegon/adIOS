//
//  ContentView.swift
//  adIOS amigIOS
//
//  Created by user189564 on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
    @State var networkingManager = NetworkingManager()
    var body: some View {
        List(networkingManager.EventList.Events.identified(by:\.url)){
            event in Text(event)
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


    let JSON : String = """
    {
    "records":[{"id":"rec2h6SsWsB0ijrNd","fields":{"Speaker(s)":["recyOI1lvVVgkvXag"],"Start":"2021-11-19T16:00:00.000Z","Location":"Grand ballroom","Notes":"Expecting a lower turnout because it's the 2nd day","End":"2021-11-19T16:15:00.000Z","Activity":"Closing remarks","Type":"Keynote"},"createdTime":"2016-10-30T21:41:29.000Z"}]
    }
    """

    let jsonData = JSON.data(using: .utf8)!

    let event: Event = try! JSONDecoder().decode(Event.self, from: jsonData)
    
}

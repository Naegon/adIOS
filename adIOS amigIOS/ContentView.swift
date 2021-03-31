//
//  ContentView.swift
//  adIOS amigIOS
//
//  Created by user189564 on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        let pomme: [Event] = [
            Event(
                startTime: "10H00",
                endTime :"12H00",
                title: "Math",
                speaker: "Teller",
                eventType: "Torture"),
            Event(
                startTime: "12H00",
                endTime :"14H00",
                title: "Physic",
                speaker: "Adem",
                eventType: "Worse"),
            Event(
                startTime: "14H00",
                endTime :"16H00",
                title: "IOS",
                speaker: "Cousin",
                eventType: "Best matière ever")]
        
        List(pomme) { event in
            Cardview(event: event)
        }
    }
}

struct ContentView: View {
    @State var networkingManager: NetworkingManager
    var body: some View {
        List(networkingManager.EventList.result.identified(by :\.url)){
            Event in Text(Event.starttime)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

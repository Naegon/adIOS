//
//  ContentView.swift
//  adIOS amigIOS
//
//  Created by user189564 on 17/03/2021.
//

import SwiftUI

struct ContentView: View {
//    @ObservedObject var networkingManager = NetworkingManager()
    @StateObject var networkingManager: NetworkingManager

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
  
        NavigationView {
            List(pomme) { event in
                ZStack {
                    Cardview(event: event)
                    NavigationLink(destination: EventPage(event: event), label: {}).opacity(0)
                }
            }
        }
        
//        Group {
//            if networkingManager.eventList.records.count <= 0 {
//                Text("Loading...")
//            } else {
//                NavigationView {
//                    List(networkingManager.eventList.records) { record in
//                        Text(record.fields.activity)
//                    }
//                }
//            }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(networkingManager: NetworkingManager())
    }
}

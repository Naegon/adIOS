//
//  EventPage.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 03/04/2021.
//

import SwiftUI

struct EventPage: View {
    let event: Event
    
    var body: some View {
        Text(event.title)
    }
}

struct EventPage_Previews: PreviewProvider {
    static var previews: some View {
        EventPage(event: Event.example)
    }
}

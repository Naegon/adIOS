//
//  testView.swift
//  adIOS amigIOS
//
//  Created by user189564 on 17/03/2021.
//

import SwiftUI

struct testView: View {
    let event : Event
        
    var body: some View {
        VStack{
            Image("background")
                .resizable()
                .scaledToFit()
            Text(event.startTime)
            Text(event.endTime)
        }
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            testView(event: Event.example)
        }
    }
}

//
//  Cardview.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 24/03/2021.
//

import SwiftUI

struct Cardview: View {
    let event: Event
    
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 20)
            HStack {
                VStack(alignment: .leading) {
                    Text(event.startTime)
                        .font(.body)
                        .foregroundColor(.black)
                    Text(event.endTime)
                        .font(.body)
                        .foregroundColor(.black)
                }
                .frame(alignment: .leading)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text(event.title)
                        .font(.title2)
                        .foregroundColor(.black)
                        .bold()
                    Text(event.speaker)
                        .font(.body)
                        .foregroundColor(.gray)
                }
                LabelType(type: event.eventType)
            }

        }
        .frame(height: 100)
        .padding(16)
    }
}

struct Cardview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Cardview(event: Event.example)
        }
    }
}

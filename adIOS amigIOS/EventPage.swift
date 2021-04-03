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
        ScrollView {
            GeometryReader { geometry in
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .frame(width: geometry.size.width, height: geometry.size.height)
                    .clipped()
            }.frame(height: 300)
            
            VStack {
                ZStack(alignment: .leading) {
                    RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.white)
                        .shadow(radius: 20)
                    Text(event.title + " with " + event.speaker)
                        .font(.title)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                }
                .frame(height: 50)
                
                HStack {
                    ZStack(alignment: .center) {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(Color.white)
                            .shadow(radius: 20)
                        Text("Date & Time")
                            .font(.title3)
                            .foregroundColor(.black)
                        Text(event.startTime)
                            .font(.title)
                            .foregroundColor(.blue)
                        Text(event.endTime)
                            .font(.title)
                            .foregroundColor(.blue)
                    }
                    .frame(height: 50)
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(Color.white)
                            .shadow(radius: 20)
                        Text(event.title)
                            .font(.title)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(height: 50)
                }
            }
            .padding(16)
        }
        .edgesIgnoringSafeArea(.all) // 3
    }
}

struct EventPage_Previews: PreviewProvider {
    static var previews: some View {
        EventPage(event: Event.example)
    }
}

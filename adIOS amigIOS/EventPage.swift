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
                HStack(alignment: .center) {
                    Text(event.title)
                        .font(.title)
                        .bold()
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                    Text("with " + event.speaker)
                        .font(.title)
                        .foregroundColor(.black)
                        .multilineTextAlignment(.leading)
                }
                .frame(height: 50)
                .background(RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(Color.white)
                    .shadow(radius: 20)
                )
                
                
                HStack {
                    VStack(alignment: .center) {
                        
                        Text("Date & Time")
                            .font(.title3)
                            .foregroundColor(.black)
                        Text(event.startTime)
                            .font(.body)
                            .foregroundColor(.blue)
                        Text(event.endTime)
                            .font(.body)
                            .foregroundColor(.blue)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(width :160,height: 70)
                    .background(
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                        .fill(Color.white)
                        .shadow(radius: 20)
                    )
                    
                    ZStack(alignment: .leading) {
                        RoundedRectangle(cornerRadius: 16, style: .continuous)
                            .fill(Color.white)
                            .shadow(radius: 20)
                        Text(event.title)
                            .font(.title)
                            .foregroundColor(.black)
                            .multilineTextAlignment(.leading)
                    }
                    .frame(height: 70)
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

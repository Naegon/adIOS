//
//  Cardview.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 24/03/2021.
//

import SwiftUI

struct Cardview: View {
    let card: Card
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 20)
            HStack {
                VStack(alignment: .leading) {
                    Text(card.event.startTime)
                        .font(.body)
                        .foregroundColor(.black)
                    Text(card.event.endTime)
                        .font(.body)
                        .foregroundColor(.black)
                }
                .frame(alignment: .leading)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text(card.event.title)
                        .font(.title2)
                        .foregroundColor(.black)
                        .bold()
                    Text(card.event.speaker)
                        .font(.body)
                        .foregroundColor(.gray)
                }
                
                ZStack {
                    RoundedRectangle(cornerRadius: 50, style: .continuous)
                        .fill(Color.blue)
                        .frame(width: 128, height: 32, alignment: .topTrailing)
                    
                    Text(card.event.eventType)
                        .font(.body)
                        .foregroundColor(.white)
                }
            }
        }
        .frame(height: 100)
        .padding(16)
    }
}

struct Cardview_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            Cardview(card: Card.exemple)
            Cardview(card: Card.exemple)
        }
    }
}

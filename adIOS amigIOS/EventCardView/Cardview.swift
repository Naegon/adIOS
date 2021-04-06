//
//  Cardview.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 24/03/2021.
//
import Foundation
import SwiftUI


struct Cardview: View {
    @State var networkingManager = NetworkingManager()

    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 16, style: .continuous)
                .fill(Color.white)
                .shadow(radius: 20)
            HStack {
                VStack(alignment: .leading) {
                    Text(networkingManager.EventList.records[0].fields.start)
                        .font(.body)
                        .foregroundColor(.black)
                    Text(networkingManager.EventList.records[0].fields.end)
                        .font(.body)
                        .foregroundColor(.black)
                }
                .frame(alignment: .leading)
                
                Divider()
                
                VStack(alignment: .leading) {
                    Text(networkingManager.EventList.records[0].fields.activity)
                        .font(.title2)
                        .foregroundColor(.black)
                        .bold()
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
            Cardview()
        }
    }
}

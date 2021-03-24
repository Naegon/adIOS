//
//  SwiftUIView.swift
//  adIOS amigIOS
//
//  Created by Guillaume Hamel on 24/03/2021.
//

import SwiftUI

struct LabelType: View {
    let type: String

    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 50, style: .continuous)
                .fill(Color.blue)
                .frame(width: 64, height: 32, alignment: .topTrailing)
            
            Text(type)
                .font(.body)
                .foregroundColor(.white)
        }
    }
}

struct LabelType_Previews: PreviewProvider {
    static var previews: some View {
        LabelType(type: "Type")
    }
}

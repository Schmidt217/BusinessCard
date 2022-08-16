//
//  InfoView.swift
//  BusinessCard
//
//  Created by Michael Schmidt on 8/16/22.
//

import SwiftUI

struct InfoView: View {
    let text: String
    let imageName: String
    let color: Color
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .frame(height: 50)
            .foregroundColor(.white)
            .overlay(HStack {
                Image(systemName: imageName)
                    .foregroundColor(color)
                Text(text)
            })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "hello", imageName: "phone.fill", color: .blue)
            .previewLayout(.sizeThatFits)
    }
}

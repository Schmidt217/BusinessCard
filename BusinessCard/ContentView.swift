//
//  ContentView.swift
//  BusinessCard
//
//  Created by Michael Schmidt on 8/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.91, green: 0.30, blue: 0.24)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                Image("me")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Mike Schmidt")
                    .font(Font.custom("Lobster-Regular", size: 40))
                    .bold()
                .foregroundColor(.white)
                Text("Mobile App Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                
                InfoView(text: "(719) 369-9670", imageName: "phone.fill", color: .green)
                InfoView(text: "schmidt217@gmail.com", imageName: "envelope.fill", color: .teal)
                InfoView(text: "mikeschmidt.dev", imageName: "display", color: .red)
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


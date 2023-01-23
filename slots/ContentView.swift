//
//  ContentView.swift
//  slots
//
//  Created by Joshua Wright on 20/01/2023.
//

import SwiftUI

struct ContentView: View {
    private let slots = ["cherry", "apple", "star"]
    
    @State private var credits = 1000
    @State private var result = ""
    @State private var slot1 = "cherry"
    @State private var slot2 = "cherry"
    @State private var slot3 = "cherry"
    @State private var slot4 = "cherry"
    
    var body: some View {
        VStack {
            Spacer()
            Text("Credits: " + String(credits))
            Spacer()
            HStack{
                Image(slot1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Image(slot2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
                Image(slot3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(slot4)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    
            }
            
            .frame(width: 400.0)
            Spacer()
            Text(result)
            Spacer()
            Button {
                if credits > 99 {
                    credits -= 25
                    slot1 = slots.randomElement()!
                    slot2 = slots.randomElement()!
                    slot3 = slots.randomElement()!
                    slot4 = slots.randomElement()!
                    result = "-25"
                    if slot1 == slot2 && slot1 == slot3 && slot1 == slot4 {
                        credits += 100
                        result = "+100"
                    }
                }
            }
            label: {
                Text("Spin Slots")
                    .font(.title)
                    .foregroundColor(Color.white)
                    .padding(.all)
                    .background(.blue)
                    .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
            }
            Spacer()
        }
        
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  SwiftUISlots
//
//  Created by Jacob Scase on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    @State var credits: Int = 0
    @State var slot1Img: String = "apple"
    @State var slot2Img: String = "cherry"
    @State var slot3Img: String = "star"
    var body: some View {
        VStack{
            Text("Swift UI Slots")
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Credits: \(credits)")
                .padding()
            HStack{
                Image(slot1Img)
                Image(slot2Img)
                Image(slot3Img)
            }
            .padding()
            Button("Spin") {
                print("Hello world")
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

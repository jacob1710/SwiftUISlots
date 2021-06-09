//
//  ContentView.swift
//  SwiftUISlots
//
//  Created by Jacob Scase on 09/06/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State var credits: Int = 100
    @State var slot1Img: String = "apple"
    @State var slot2Img: String = "cherry"
    @State var slot3Img: String = "star"
    var body: some View {
        VStack(spacing: .some(100.0)){
            Text("Swift UI Slots!")
                .padding()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            Text("Credits: \(credits)")
                .padding()
            HStack{
                Image(slot1Img)
                    .resizable()
                    .scaledToFit()
                Image(slot2Img)
                    .resizable()
                    .scaledToFit()
                Image(slot3Img)
                    .resizable()
                    .scaledToFit()
                    
            }
            .padding()
            Button(action: {
                print("Hello world")
                let wheelSpinResult = spinWheel()
                slot1Img = wheelSpinResult.0
                slot2Img = wheelSpinResult.1
                slot3Img = wheelSpinResult.2
                
                if (slot1Img == slot2Img) && (slot2Img == slot3Img){
                    credits+=10
                }else{
                    credits-=5
                }
            }, label: {
                Text("Spin")
                    .padding(EdgeInsets(top: 15, leading: 30, bottom: 15, trailing: 30))
                    .foregroundColor(.white)
                    .background(Color.pink)
                    .cornerRadius(30.0)
                    .font(.body.bold())
                    
            })
        }
    }
}

func spinWheel() -> (String, String, String) {
    let options = ["apple","cherry","star"]
    return (options.randomElement()!,options.randomElement()!,options.randomElement()!)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

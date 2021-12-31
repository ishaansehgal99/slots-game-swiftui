//
//  ContentView.swift
//  slots-game-swiftui
//
//  Created by Ishaan Sehgal on 12/30/21.
//

import SwiftUI

struct ContentView: View {
    let slotTypes = ["apple", "cherry", "star"]
    @State private var credits:Int = 1000
    @State private var slot1:String = "apple"
    @State private var slot2:String = "cherry"
    @State private var slot3:String = "star"
    
    var body: some View {
        VStack{
            Spacer()
            
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            
            Spacer()
            
            Text("Credits: \(credits)")
            
            Spacer()
            
            HStack {
                Image(slot1)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(slot2)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Image(slot3)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Spacer()
            
            Button(action: {
                slot1 = slotTypes[Int.random(in: 0...2)]
                slot2 = slotTypes[Int.random(in: 0...2)]
                slot3 = slotTypes[Int.random(in: 0...2)]
                if slot1 == slot2 && slot2 == slot3 {
                    credits += 50
                }
                else {
                    credits -= 5
                }
            }){
                Text("Spin")
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width*0.4, height: 50, alignment: .center)
                    .background(Color(.systemPink))
                    .cornerRadius(25)
                    .font(.system(size: 18, design: .default))
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

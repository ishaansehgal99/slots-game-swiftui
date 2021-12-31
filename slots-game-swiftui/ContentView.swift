//
//  ContentView.swift
//  slots-game-swiftui
//
//  Created by Ishaan Sehgal on 12/30/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            Text("SwiftUI Slots!")
                .font(.largeTitle)
            
            Text("Credits: 1000")
            
            HStack {
                Image("apple")
                    .scaledToFit()
                Image("cherry")
                    .scaledToFit()
                Image("star")
            }
            
            Button(action: {}){
                Text("Spin")
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width*0.4, height: 50, alignment: .center)
                    .background(Color(red: 201 / 255, green: 14 / 255, blue: 65 / 255))
                    .cornerRadius(20)
                
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

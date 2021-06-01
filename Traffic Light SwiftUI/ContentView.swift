//
//  ContentView.swift
//  Traffic Light SwiftUI
//
//  Created by Mikhail Bukhrashvili on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            background
            VStack {
                trafficLight
                Spacer()
                nextButton
            }
        }
    }
    
    private var nextButton: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
            Text("NEXT")
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .frame(width: 200, height: 60, alignment: .center)
                .background(Color.blue)
                .cornerRadius(20)
                //.overlay
                .overlay(Circle().stroke(Color.white, lineWidth: 8))
        }
    }
    
    
    
    
    private var trafficLight: some View {
        VStack {
            ColorCircle(color: .red, opacity: 0.5)
            ColorCircle(color: .yellow, opacity: 0.5)
            ColorCircle(color: .green, opacity: 0.5)
        }
    }
    
    private var background: some View {
        Color(.black)
            .ignoresSafeArea()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

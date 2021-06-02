//
//  ContentView.swift
//  Traffic Light SwiftUI
//
//  Created by Mikhail Bukhrashvili on 01.06.2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var redOpacity = 0.5
    @State private var yellowOpacity = 0.5
    @State private var greenOpacity = 0.5
    @State private var buttonText = "START"
    
    var body: some View {
        ZStack{
            background
            VStack {
                trafficLight
                Spacer()
                startButton
            }
        }
    }
    
    private var startButton: some View {
        Button(action: {changeLights()}) {
            Text(buttonText)
                .font(.title)
                .bold()
                .foregroundColor(.white)
                .frame(width: 200, height: 60, alignment: .center)
                .background(Color.blue)
                .cornerRadius(20)
                .padding(5)
                .background(Color.white)
                .cornerRadius(22)
        }
    }
    
    private var trafficLight: some View {
        VStack {
            ColorCircle(color: .red,
                        opacity: redOpacity)
            ColorCircle(color: .yellow,
                        opacity: yellowOpacity)
            ColorCircle(color: .green,
                        opacity: greenOpacity)
        }
    }
    
    private var background: some View {
        Color(.black)
            .ignoresSafeArea()
    }
    
    private func changeLights() {
        if buttonText == "START" {
            buttonText = "NEXT"
            redOpacity = 1
            
        } else if redOpacity == 1 {
            redOpacity = 0.5
            yellowOpacity = 1
            
        } else if yellowOpacity == 1 {
            yellowOpacity = 0.5
            greenOpacity = 1
            
        } else if greenOpacity == 1 {
            greenOpacity = 0.5
            redOpacity = 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  DemoSwiftUIConcept
//
//  Created by kristine.lazdovska on 01/09/2021.
//

import SwiftUI

struct ContentView: View {
    
    @State private var circleColor = Color.red
    var body: some View {
        ZStack {
            
            Button("Change Circle Color") {
                print("Change Circle Color")
                self.circleColor = Color.green
            }.padding()
            .background(Color.yellow)
            .cornerRadius(10)
            .offset(y: -200)
            
            HStack{
                Circle()
                Circle()
                Circle()
                Circle()
            }.foregroundColor(circleColor)
            
            VStack {
                Text("Hello, girls!")
                    .font(.caption2)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .frame(width: 100.0, height: 150.0)
                    .background(Color.orange)
                    .cornerRadius(10)
                
                Text("Welcome to SwiftUI")
                    .padding()
                
                Text("xcode lesson 14")
                    .padding()
                
            }.font(.subheadline)
            .foregroundColor(.blue)
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Tutorial1 Watch App
//
//  Created by Azizbek Asadov on 29.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var moveOnPath = false
    
    var body: some View {
        VStack {
            Text("Simple Animation")
                .font(.system(size: 18, weight: .semibold))
                .foregroundStyle(Color.white)
            
            ZStack {
                Circle()
                    .stroke()
                    .frame(width: 100, height: 100, alignment: .center)
                
                Circle()
                    .stroke()
                    .frame(width: 15, height: 15, alignment: .center)
                    .foregroundStyle(Color.red)
                    .offset(x: -50)
                    .rotationEffect(.degrees(moveOnPath ? 0 : 360))
                    .animation(
                        Animation.linear(duration: 4)
                            .repeatForever(autoreverses: false)
                    )
                    .onAppear(perform: {
                        moveOnPath.toggle()
                    })
                
            }
            .rotation3DEffect(
                .degrees(70),
                axis: (x: 10, y: 0.5, z: 0.0)
            )
            
            Text("WatchOS Tutorials")
                .font(.caption2)
                .foregroundStyle(Color.white)
        }
    }
}

#Preview {
    ContentView()
}

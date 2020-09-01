import SwiftUI

struct ContentView: View {
    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        ZStack {
            Circle()
                .foregroundColor(Color.pink.opacity(0.3))
                .frame(width: 60, height: 60)
                .scaleEffect(animationAmount)
                .opacity(Double(2.5 - animationAmount))
            Image("img_bg")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .cornerRadius(30)
                .overlay(
                    Circle()
                        .stroke(Color.pink, lineWidth: 0.5)
                )
        }
        .animation(
            Animation.easeOut(duration: 2)
                .repeatForever(autoreverses: false)
        )
        .onAppear {
            self.animationAmount = 2.5
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}








//
//  ContentView.swift
//  TinderLoader WatchKit Extension
//
//  Created by JD on 01/09/20.
//

//
//  SplashView.swift
//  Guidebook
//
//  Created by Vera on 8/17/24.
//

import Foundation
import SwiftUI

let bgdGradSplash = LinearGradient(
    colors: [Color.blue, Color.teal, Color.yellow],
    startPoint: .top, endPoint: .bottom)

struct SplashView: View {
    
    let funFacts = ["Polar bears have black skin.",
                    "Kangaroos can't fart!",
                    "Cheetahs are the fastest land animals.",
                    "Masai giraffes are distinguished by their jagged brown spots.",
                    "Grevy's zebra are endangered at fewer than 2,500 individuals.",
                    "Southern white rhinoceroses must eat up to 120 pounds of grass a day.",
                    "Meerkats have special membranes that protect their eyes from dirt and debris when digging.",
                    "Mongoose lemurs become nocturnal in the dry season to avoid the heat of daylight.",
                    "Ring-tailed lemurs use their long, striped tails for balance and as a visual signal."]
    
    @State var isActive: Bool = false
    @State var degreesRotating = 0.0
    @State var factNum = Int.random(in: 0..<9)
    @State private var isAnimating = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                ZooView()
                    .transition(.slide)
            } else {
                
                Image("lilypads")
                    .resizable()
                    .scaledToFill()
                    .frame(minWidth: 0)
                    .edgesIgnoringSafeArea(.all)
                    //.opacity(0.5)
                
                Text("Where the Wild\nThings Are")//SacZoo Animal Explorer")
                    .padding(.bottom, 700)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.white, .yellow, .red],
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
                    )
                    .fixedSize()
                    .multilineTextAlignment(.center)
                    .font(.system(size: 50, weight: .heavy, design: .rounded))
                    .bold()
                
                Image("wherethewildthings")
                    .resizable()
                    .scaledToFit()
                    .padding(.bottom, 300)
                    .frame(width: 550, height: 550)
                    .scaleEffect(isAnimating ? 1.05 : 0.95)
                    .onAppear() {
                        withAnimation(.easeInOut(duration: 1.0).repeatForever(autoreverses: true)) {
                            isAnimating = true
                        }
                    }
                
                Image(systemName: "fanblades")
                    .font(.system(size: 45))
                    //.padding(.top, 700)
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.pink, .yellow, .red],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )
                    .rotationEffect(.degrees(degreesRotating))
                    
                    .onAppear {
                        withAnimation(.linear(duration: 1)
                        .speed(0.6).repeatForever(autoreverses: false)) {
                            degreesRotating = 360.0
                        }
                    }
                
                Text("Did you know? ")
                    .padding(.top, 165)
                    .bold()
                    .foregroundStyle(.white)
                        /*.linearGradient(
                            colors: [.purple, .blue],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                    )*/
                    .font(.system(size: 30, weight: .heavy, design: .rounded))
                
                let fact = funFacts[factNum]
                Text(fact)
                    .padding(.top, 300)
                    .padding(.horizontal, 85)
                    .bold()
                    .foregroundStyle(
                        .linearGradient(
                            colors: [.white, .white],
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        )
                    )
                    .font(.system(size: 23))
                    .multilineTextAlignment(.center)
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 4) {
                withAnimation {
                    self.isActive = true
                }
            }
        }
    }
        
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
    }
}

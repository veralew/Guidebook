//
//  ResultsView.swift
//  Guidebook
//
//  Created by Vera on 10/9/24.
//

import SwiftUI

struct ResultsView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var result: QuizResult
    @State private var showConfetti = true
    
    var body: some View {
        
        ZStack {
            Image("lilies")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0)
                .edgesIgnoringSafeArea(.all)
            
            VStack(spacing: 30) {
                
                Text("Quiz Results")
                    .font(.system(size: 60))
                    .foregroundStyle(.white)
                    .bold()
                
                Text("\(result.correct) / \(result.total)")
                    .font(.system(size: 36))
                    .foregroundStyle(.white)
                    .bold()
                    //.background(Color("AppColor"))
                
                Text(result.grade)
                    .font(.system(size: 32))
                    .foregroundStyle(.white)
                    .background(Color("AppColor"))
                
                if ((result.correct*100) / result.total < 50) {
                    Text("Tough luck. Retake the quiz?")
                        .font(.system(size: 24))
                        .foregroundStyle(.white)
                        .background(Color("AppColor"))
                }
                else {
                    Text("You completed the quiz. Great job!")
                        .font(.system(size: 24))
                        .foregroundStyle(.white)
                        .background(Color("AppColor"))
                }
                
                
                Button {
                    dismiss()
                } label: {
                    Text("Retake Quiz")
                        .font(.system(size: 23))
                        .padding()
                        .foregroundColor(.white)
                        .background(
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill (Color ("AppColor"))
                                .frame(width: 340)
                        )
                }
                
                Text("image by\rseori_berry")
                    .font(.system(size: 15))
                    .padding(.top, 50)
                    //.foregroundStyle(.blue)
                    .bold()
            }
            .displayConfetti(isActive: $showConfetti)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            .padding(.bottom, 100)
        }
        
        HStack {
            NavigationLink(destination: ZooView()) {
                Text("Explorer ")
                    .padding(.top, 5)
            }
            Text(" Quiz")
                .padding(.top, 5)
            NavigationLink(destination: ImpactView()) {
                Text(" Impact ")
                    .padding(.top, 5)
            }
        }
    }
}

#Preview {
    ResultsView(result: .init(correct: 4, total: 10, grade: "80%"))
}

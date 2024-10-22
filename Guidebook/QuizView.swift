//
//  SplashView.swift
//  Guidebook
//
//  Created by Vera on 8/17/24.
//

import Foundation
import SwiftUI


struct QuizView: View {
    
    @StateObject var manager = QuizManager()
    
    @State var selection = 0
    @State var showStart = true
    @State var showResults = false
    @State private var startAnimation: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack {
                
                LinearGradient(
                    colors: [
                        .green,
                        .blue],
                    startPoint: startAnimation ? .topLeading : .bottomLeading,
                    endPoint: startAnimation ? .bottomTrailing : .topTrailing
                )
                // Animation to toggle the gradient colors
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever()) {
                        startAnimation.toggle()
                    }
                }
                
                TabView(selection: $selection) {
                    ForEach(manager.questions.indices, id: \.self) { index in
                        VStack {
                            Spacer()
                            QuestionView(question: $manager.questions[index])
                            Spacer()
                            
                            if let lastQuestion = manager.questions.last, lastQuestion.id == manager.questions[index].id {
                                
                                Button {
                                    manager.gradeQuiz()
                                    showResults = true
                                    manager.resetQuiz()
                                    selection = 0
                                }
                                label: {
                                    Text("Submit")
                                        .padding()
                                        .foregroundColor(.white)
                                        .background(
                                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                                .fill (Color ("AppColor"))
                                                .frame(width: 340)
                                        )
                                }
                                .buttonStyle(.plain)
                                .disabled(!manager.canSubmit())
                            }
                        }
                        .tag(index)
                    }
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                .fullScreenCover(isPresented: $showStart) {
                    StartView()
                }
                .fullScreenCover(isPresented: $showResults) {
                    ResultsView(result: manager.quizResult)
                }

                
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
        
}

struct QuizView_Previews: PreviewProvider {
    static var previews: some View {
        QuizView()
    }
}

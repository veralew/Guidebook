//
//  QuestionView.swift
//  Guidebook
//
//  Created by Vera on 10/8/24.
//

import SwiftUI

struct Question: Identifiable, Decodable {
    let id: Int
    let title: String
    let answer: String
    let options: [String]
    var selection: String?
}

struct QuestionView: View {
    @Binding var question: Question
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text(question.title)
                //.bold()
                .font(.system(size: 25))
                .padding(.bottom, 10)
            
            ForEach(question.options, id:\.self) { option in
                HStack {
                    Button {
                        question.selection = option
                    }
                    label: {
                        if question.selection == option {
                            Circle()
                                .shadow(radius: 3)
                                .frame(width: 24, height: 24)
                                .foregroundColor(Color("AppColor"))
                        }
                        else {
                            Circle()
                                .stroke()
                                .shadow(radius: 3)
                                .frame(width: 24, height: 24)
                        }
                    }
                    
                    Text(option)
                        .font(.system(size: 25))
                }
            }
        }
        .foregroundColor(Color(uiColor: .secondaryLabel))
        .padding(.horizontal, 20)
        .frame(width: 340, height: 550, alignment: .leading)
        .background(Color(uiColor: .systemGray6))
        .cornerRadius(20)
        .shadow(color: Color(uiColor: .label).opacity(0.2), radius: 15)
    }
}

struct QuestionView_Previews: PreviewProvider {
    static var previews: some View {
        QuestionView(question: .constant(Question(id: 1, title: "When was the first iPhone released?", answer: "A", options: ["A", "B", "C", "D"])))
    }
}

//
//  QuizManager.swift
//  Guidebook
//
//  Created by Vera on 10/8/24.
//

import Foundation
import Supabase

class QuizManager: ObservableObject {
    
    @Published var quizResult = QuizResult(correct: 0, total: 0, grade: "100%")
    
    @Published var questions = [
        Question(id: 1, title: "1. How much of the world's forests are lost every year?",
                 answer: "160,000 square kilometers", options: [
                    "2,000 square kilometers",
                    "10,000 square kilometers",
                    "75,000 square kilometers",
                    "160,000 square kilometers"
                  ]),
        Question(id: 2, title: "2. By how much has animal biodiversity changed since the year 1970?",
                 answer: "decreased by almost 70%", options: [
                    "increased by 5%",
                    "biodiversity stayed about the same",
                    "decreased by 25%",
                    "decreased by almost 70%"
                  ]),
        Question(id: 3, title: "3. Many wetlands have been lost to agricultural drainage, construction of roads, and disrupted waterflow from dams. How much of southern California historical wetlands have been lost?",
                 answer: "up to 85%", options: [
                    "less than 15%",
                    "between 30-35%",
                    "around 50%",
                    "up to 85%"
                  ]),
        Question(id: 4, title: "4. A few ways humans have contributed to habitat destruction are agricultural development and logging. Habitat destruction is responsible for ___ of the decline in global biological diversity.",
                 answer: "80%", options: [
                    "40%",
                    "60%",
                    "80%",
                    "100%"
                  ]),
        Question(id: 5, title: "5. reshwater populations have experienced the most significant decline among all global species groups. What percent of freshwater populations have been decimated in the last 50 years?",
                 answer: "over 80%", options: [
                    "less than 60%",
                    "60-70%",
                    "70-80%",
                    "over 80%"
                  ]),
        Question(id: 6, title: "6. Harvard biologist E. O. Wilson estimates that around ____ species are going extinct each year.", answer: "30,000", options: [
                    "30",
                    "300",
                    "3,000",
                    "30,000"
                  ])
                          
    ]
    
    func canSubmit() -> Bool {
        return questions.filter({ $0.selection == nil }).isEmpty
    }
    
    func gradeQuiz() {
        var correct: CGFloat = 0
        for question in questions {
            if question.answer == question.selection {
                correct += 1
            }
        }
        let x = (correct/CGFloat(questions.count)) * 100
        let y = Double(round(100 * x) / 100)
        self.quizResult = QuizResult(correct: Int(correct), total: questions.count, grade: "\(y)%")
    }
    
    func resetQuiz() {
        self.questions = questions.map({ Question(id: $0.id, title: $0.title, answer: $0.answer, options: $0.options, selection: nil)})
    }
}

struct QuizResult {
    let correct: Int
    let total: Int
    let grade: String
}

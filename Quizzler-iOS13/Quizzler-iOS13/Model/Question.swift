import Foundation

struct Question {
    let question : String
    let options : [String]
    let correctAnswer : String
    
    init(question : String, options : [String] , correctAnswer : String) {
        self.question = question
        self.options = options
        self.correctAnswer = correctAnswer
    }
}

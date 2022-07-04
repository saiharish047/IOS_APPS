import Foundation


struct QuizBrain{
    let quiz = [
        Question(question: "Which is the largest organ in the human body?", options: ["Heart", "Skin", "Large Intestine"], correctAnswer: "Skin"),
        Question(question: "Five dollars is worth how many nickels?", options: ["25", "50", "100"], correctAnswer: "100"),
        Question(question: "What do the letters in the GMT time zone stand for?", options: ["Global Meridian Time", "Greenwich Mean Time", "General Median Time"], correctAnswer: "Greenwich Mean Time"),
        
        Question(question: "What is the French word for 'hat'?", options: ["Chapeau", "Écharpe", "Bonnet"], correctAnswer: "Chapeau"),
        Question(question: "In past times, what would a gentleman keep in his fob pocket?", options: ["Notebook", "Handkerchief", "Watch"], correctAnswer: "Watch"),
        Question(question: "How would one say goodbye in Spanish?", options: ["Au Revoir", "Adiós", "Salir"], correctAnswer: "Adiós"),
        Question(question: "Which of these colours is NOT featured in the logo for Google?", options: ["Green", "Orange", "Blue"], correctAnswer: "Orange"),
        Question(question: "What alcoholic drink is made from molasses?", options: ["Rum", "Whisky", "Gin"], correctAnswer: "Rum"),
        Question(question: "What type of animal was Harambe?", options: ["Panda", "Gorilla", "Crocodile"], correctAnswer: "Gorilla"),
        Question(question: "Where is Tasmania located?", options: ["Indonesia", "Australia", "Scotland"], correctAnswer: "Australia")

    ]
    
    var questionNumber = 0
    
    var score = 0
    
    mutating func checkAnswer(_ userAnswer : String) -> Bool {
        if userAnswer == quiz[questionNumber].correctAnswer {
            self.score += 1;
            return true;
        } else{
            return false;
        }
    }
    
    func getScore() -> Int{
        return score;
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.capacity {
             self.questionNumber += 1
        }
        else{
             self.score = 0
             self.questionNumber = 0
        }
    }
    
    func getOptions() -> [String]{
        return quiz[questionNumber].options
    }
    
    
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getProgress() -> Float{
        return Float(questionNumber+1)/Float(quiz.count)
    }
    
    
    // Instead if you want to pass positional arguments in swift then
    /*
     func checkAnswer(answer userAnswer : String){
     }
        here answer is an external parameter
        so if we want to call checkAnswer now we can use checkAnswer(answer:"bruh"),
        but if we want to not specify it as named params then
        
     func checkAnswer(_ userAnswer : String){
     }
     make the external param a underscore. and then while calling we can simply do checkAnswer("bruh)
     */
    
    
}

//
//  ViewController.swift
//  Flags
//
//  Created by Marc Kraus on 28.12.17.
//  Copyright © 2017 Marc Kraus. All rights reserved.
//

import UIKit
import CoreData

class GameViewController: UIViewController {
    @IBOutlet weak var questionCounter: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressView: UIView!
    @IBOutlet weak var flagView: UIImageView!
    @IBOutlet weak var questionLabel: UILabel!
    
    //Outlet for Buttons
    @IBOutlet weak var buttonA: UIButton!
    @IBOutlet weak var buttonB: UIButton!
    @IBOutlet weak var buttonC: UIButton!
    @IBOutlet weak var buttonD: UIButton!
    
    // Needed to get the switch properties from the SelectionViewController
    var africa:Bool = false
    var africaTwo:Bool = false
    var america:Bool = false
    var americaTwo:Bool = false
    var asia:Bool = false
    var asiaTwo:Bool = false
    var europe:Bool = false
    var europeTwo:Bool = false
    var oceania:Bool = false
    var trainer:Bool = false
    
    var allQuestions = QuestionDefault()
    var europeQuestions = QuestionEurope()
    var europeQuestionsPartTwo = QuestionEuropePartTwo()
    var asiaQuestions = QuestionAsia()
    var asiaQuestionsPartTwo = QuestionAsiaPartTwo()
    var africaQuestions = QuestionAfrica()
    var africaQuestionsPartTwo = QuestionAfricaPartTwo()
    var americaQuestions = QuestionAmerica()
    var americaQuestionsPartTwo = QuestionAmericaPartTwo()
    var oceaniaQuestions = QuestionOceania()

    var questionNumber: Int = 0
    var score: Int = 0
    var selectedAnswer: Int = 0

    // Needed to shuffle the question list
    var tmpQuestionList: [String]=[]
    var correctAnswer: String = ""
    var correctQuestion: String = ""
    var wrongChoise1: String = ""
    var wrongChoise2: String = ""
    var wrongChoise3: String = ""
    var newAnswerPlace: Int = 0
    
    // Trainer Database
    var countries = [Country]()

    override func viewDidLoad() {
        super.viewDidLoad()

        if(africa == true){
            allQuestions.list += africaQuestions.list
        }
        if(africaTwo == true){
            allQuestions.list += africaQuestionsPartTwo.list
        }
        if(america == true){
            allQuestions.list += americaQuestions.list
        }
        if(americaTwo == true){
            allQuestions.list += americaQuestionsPartTwo.list
        }
        if(asia == true){
            allQuestions.list += asiaQuestions.list
        }
        if(asiaTwo == true){
            allQuestions.list += asiaQuestionsPartTwo.list
        }
        if(europe == true){
            allQuestions.list += europeQuestions.list
        }
        if(europeTwo == true){
            allQuestions.list += europeQuestionsPartTwo.list
        }
        if(oceania == true){
            allQuestions.list += oceaniaQuestions.list
        }
        if(trainer == true){
            // Im Trainer Modus erzeuge aus der Datenbank eine Question Liste
            let fetchRequest: NSFetchRequest<Country> = NSFetchRequest<Country>(entityName: "Country")
            do{
                let countries = try CoreDataStack.context.fetch(fetchRequest)
                self.countries = countries
            } catch {}
            
            for country in countries{
                allQuestions.list.append(Question(image: country.flag!, questionText: country.question!, choice: [country.name!, country.wrongchoisel!, country.wrongchoisell!, country.wrongchoiselll!]))
            }
        }

        if(allQuestions.list.count > 0){
            allQuestions.list.shuffle()
            updateQuestion()
            updateUI()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if(allQuestions.list.count > 0){
            if sender.tag == newAnswerPlace {
                score += 1
                
                // Im Trainer die richtige Antwort aus CoreDataStack loeschen
                if(trainer == true){
                    let allFetch = NSFetchRequest<NSFetchRequestResult>(entityName: "Country")
                    allFetch.predicate = NSPredicate(format: "name == %@", correctAnswer)
                    let theRightOne = try! CoreDataStack.persistentContainer.viewContext.fetch(allFetch)
                    if(theRightOne.first != nil){
                        // den vorhandenen Datensatz loeschen
                        let theRightCountry: Country = theRightOne.first as! Country
                        CoreDataStack.context.delete(theRightCountry)
                        CoreDataStack.saveContext()
                    }
                }
                
            }else{
                // Im Spiel falsche Antworten in den Trainer speichern
                if(trainer == false){
                    // Wenn nicht im Trainermodus, falsche Antworten speichern
                    let country = Country(context: CoreDataStack.context)
                    country.name = correctAnswer
                    country.flag = allQuestions.list[questionNumber].questionImage
                    country.question = correctQuestion
                    country.wrongchoisel = wrongChoise1
                    country.wrongchoisell = wrongChoise2
                    country.wrongchoiselll = wrongChoise3
                    CoreDataStack.saveContext()
                }
                
                let rightword = tmpQuestionList[newAnswerPlace]
                let alert = UIAlertController(title: "Ups!", message: "\nDie richtige Antwort wäre \(rightword) gewesen.", preferredStyle: .alert)
                let imageView = UIImageView()
                imageView.image = UIImage(named: (allQuestions.list[questionNumber].questionImage))
                imageView.frame =  CGRect(x: 10, y: 10, width: 55, height: 40)
                alert.view.addSubview(imageView)
                alert.addAction(UIAlertAction(title: "OK", style: .cancel, handler: nil))
                self.present(alert, animated: true)
            }
            questionNumber += 1
            updateQuestion()
        }else{
            let alert = UIAlertController(title: "Sachen gibt's!", message: "Dafür gibt's noch keine Punkte?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Zurück zur Auswahl!", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "onceMore", sender: self)
            }))
            present(alert, animated: true, completion: nil)
        }
    }
    
    func updateQuestion(){
        if (questionNumber <= allQuestions.list.count - 1){
            flagView.image = UIImage(named:(allQuestions.list[questionNumber].questionImage))
            questionLabel.text = allQuestions.list[questionNumber].question
            tmpQuestionList = allQuestions.list[questionNumber].options
            // save the correct Answer
            correctQuestion = allQuestions.list[questionNumber].question
            correctAnswer = allQuestions.list[questionNumber].options[0]
            wrongChoise1 = allQuestions.list[questionNumber].options[1]
            wrongChoise2 = allQuestions.list[questionNumber].options[2]
            wrongChoise3 = allQuestions.list[questionNumber].options[3]
            // shuffle the tmpQuestionList
            tmpQuestionList.shuffle()
            // find after shuffle the correctAnswer again and the index of it
            if let i = tmpQuestionList.index(of: correctAnswer) {
                newAnswerPlace = i // i is the index
            }
            buttonA.setTitle(tmpQuestionList[0], for: UIControlState.normal)
            buttonA.tag = 0
            buttonB.setTitle(tmpQuestionList[1], for: UIControlState.normal)
            buttonB.tag = 1
            buttonC.setTitle(tmpQuestionList[2], for: UIControlState.normal)
            buttonC.tag = 2
            buttonD.setTitle(tmpQuestionList[3], for: UIControlState.normal)
            buttonD.tag = 3
        }else {
            let alert = UIAlertController(title: "Hammer", message: "Möchtest du es nochmal versuchen?", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Neustart", style: .default, handler: { (action) in
                self.performSegue(withIdentifier: "onceMore", sender: self)
            }))
            present(alert, animated: true, completion: nil)
        }
        updateUI()
    }
    
    func updateUI(){
        scoreLabel.text = "Score: \(score)"
        if (questionNumber <= allQuestions.list.count - 1){
            questionCounter.text = "\(questionNumber + 1)/\(allQuestions.list.count)"
            progressView.frame.size.width = (view.frame.size.width / CGFloat(allQuestions.list.count)) * CGFloat(questionNumber + 1)
        }
    }
    
    func restartQuiz(){
        score = 0
        questionNumber = 0
        allQuestions.list.shuffle()
        updateQuestion() 
    }
}


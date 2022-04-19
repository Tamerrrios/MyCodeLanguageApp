//
//  LanguagesData.swift
//  MyCodeLanguage
//
//  Created by Temur Juraev on 18.04.2022.
//

import Foundation


struct LanguageData {
    
var currentQuetion = 0

let language = [
    Language(
        title: "Do you have any experience with programming?",
        choice1: "Yes", choiceDestination1: 1,
        choice2: "Probably not", choiceDestination2: 2
    ),
    Language(
        title: "Do you know such programming languages as Python, java, swift?",
        choice1: "Yes, I've heard of them",
        choiceDestination1: 4,
        choice2: "I don't know anything about it",
        choiceDestination2: 5
    ),
    Language(
        title: "Do you like mobile development or web development ?",
        choice1: "Mobile development",
        choiceDestination1: 3,
        choice2: "I am interested in web development",
        choiceDestination2: 4
    ),
    Language(
        title: "Would you like to write apps for android or iOS?",
        choice1: "I am big fan of IOS",
        choiceDestination1: 7,
        choice2: "I like Android more",
        choiceDestination2: 8
    ),
    Language(
        title: "Do you know such basics of web development as html, css?",
        choice1: "I have some expiriences",
        choiceDestination1: 6,
        choice2: "Nope",
        choiceDestination2: 5
    ),
    Language(
        title: "If you do not have the knowledge, then I advise you to take the AngelaYu course on the portal Udemy.com about web development",
        choice1: "I got it",
        choiceDestination1: 0,
        choice2: "Re-start",
        choiceDestination2: 0
    ),
    Language(
        title: "Great, I advise you to pick up a couple of courses about web development on the portal udemy.com",
        choice1: "I got it",
        choiceDestination1: 0,
        choice2: "Re-start",
        choiceDestination2: 0
    ),
    Language(
        title: "In this case, you need to study Swift, I strongly advise the AngelaYu course on the portal udemy.com",
        choice1: "I got it",
        choiceDestination1: 0,
        choice2: "Re-start",
        choiceDestination2: 0
    ),
    Language(
        title: "In this case, you need to learn Kotlin",
        choice1: "I got it",
        choiceDestination1: 0,
        choice2: "Re-start",
        choiceDestination2: 0
        )
  ]
    
    func getTitle() -> String {
        language[currentQuetion].title
    }
    
    func getChoice1() -> String {
        language[currentQuetion].choice1
    }
    
    func getChoice2() -> String {
        language[currentQuetion].choice2
    }
    
    mutating  func nextQuestion(userChoice: String) {
        var newQuestion = language[currentQuetion]
        if userChoice == newQuestion.choice1 {
            currentQuetion = newQuestion.choiceDestination1
        } else if userChoice == newQuestion.choice2 {
            currentQuetion = newQuestion.choiceDestination2
        }
    }

   
}

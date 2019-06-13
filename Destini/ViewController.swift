//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//
//  Jake's Attempt

import UIKit

class ViewController: UIViewController {

    // Our strings
    let story1 = "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: \"Need a ride, boy?\"."
    let answer1a = "I\'ll hop in. Thanks for the help!"
    let answer1b = "Better ask him if he\'s a murderer first."
    
    
    let story2 = "He nods slowly, unphased by the question."
    let answer2a = "At least he\'s honest. I\'ll climb in."
    let answer2b = "Wait, I know how to change a tire."
    
    let story3 = "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box."
    let answer3a = "I love Elton John! Hand him the cassette tape."
    let answer3b = "It\'s him or me! You take the knife and stab him."
    
    let story4 = "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?"
    let story5 = "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in."
    let story6 = "You bond with the murderer while crooning verses of \"Can you feel the love tonight\". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: \"Try the pier.\""
    
    
    // UI Elements linked to the storyboard
    @IBOutlet weak var topButton: UIButton!         // Has TAG = 1
    @IBOutlet weak var bottomButton: UIButton!      // Has TAG = 2
    @IBOutlet weak var storyTextView: UILabel!
    
    var currentStory: Int = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //** start off with first story and answers **
        updateUI(displayStory: story1, topBtnAnswer: answer1a, botBtnAnswer: answer1b)
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        
        
        switch currentStory {
        case 1:
            if sender.tag == 1 {
                print("You selected top button!")
                currentStory = 3
                updateUI(displayStory: story3, topBtnAnswer: answer3a, botBtnAnswer: answer3b)
                
            } else if sender.tag == 2 {
                print("You selected bottom button!")
                currentStory = 2
                updateUI(displayStory: story2, topBtnAnswer: answer2a, botBtnAnswer: answer2b)
            }
            break
        case 2:
            //TODO which button and load story3 or story4
            if sender.tag == 1 {
                print("You selected top button!")
                currentStory = 3
                updateUI(displayStory: story3, topBtnAnswer: answer3a, botBtnAnswer: answer3b)
            } else if sender.tag == 2 {
                print("you selected bottom button!")
                currentStory = 4
                updateUI(displayStory: story4, topBtnAnswer: "-", botBtnAnswer: "-")
            }
            break
        case 3:
            if sender.tag == 1 {
                print("You selected top button!")
                currentStory = 6
                updateUI(displayStory: story6, topBtnAnswer: "-", botBtnAnswer: "-")
            } else if sender.tag == 2 {
                print("You selected bottom button!")
                currentStory = 5
                updateUI(displayStory: story5, topBtnAnswer: "-", botBtnAnswer: "-")
            }
            break
        default: break
            
        }
        
        // TODO Step 6: Modify the IF-Statement to complete the story
        
    
    }
    
    func updateUI(displayStory: String, topBtnAnswer: String, botBtnAnswer: String) {
        storyTextView.text = displayStory
        topButton.setTitle(topBtnAnswer, for: .normal)
        bottomButton.setTitle(botBtnAnswer, for: .normal)
        print("loaded \(currentStory)")
    }
    



}


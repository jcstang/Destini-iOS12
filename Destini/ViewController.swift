//
//  ViewController.swift
//  Destini
//
//  Created by Philipp Muellauer on 01/09/2015.
//  Copyright (c) 2015 London App Brewery. All rights reserved.
//

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
    
    // TODO Step 5: Initialise instance variables here
    var T1_Story: String = ""
    var T1_Ans1: String = ""
    var T1_Ans2: String = ""
    
    var currentStory: Int = 1
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // TODO Step 3: Set the text for the storyTextView, topButton, bottomButton, and to T1_Story, T1_Ans1, and T1_Ans2
        //storyTextView.text = story1
        //topButton.setTitle(answer1a, for: .normal)
        //bottomButton.setTitle(answer1b, for: .normal)
        
        //** start off with first story and answers **
        T1_Story = story1
        T1_Ans1 = answer1a
        T1_Ans2 = answer1b
        updateUI(displayStory: T1_Story, topBtnAnswer: T1_Ans1, botBtnAnswer: T1_Ans2)
        updateUI(displayStory: story1, topBtnAnswer: answer1a, botBtnAnswer: answer1b)
        
        
    }

    
    // User presses one of the buttons
    @IBAction func buttonPressed(_ sender: UIButton) {
    
        // TODO Step 4: Write an IF-Statement to update the views
        
        switch currentStory {
        case 1:
            if sender.tag == 1 {
                print("You selected top button!")
                updateUI(displayStory: story3, topBtnAnswer: answer3a, botBtnAnswer: answer3b)
                currentStory = 3
                
            } else if sender.tag == 2 {
                print("You selected bottom button!")
                updateUI(displayStory: story2, topBtnAnswer: answer2a, botBtnAnswer: answer2b)
                currentStory = 2
            }
            break
        case 2:
            //TODO which button and load story3 or story4
            if sender.tag == 1 {
                print("You selected top button!")
                //TODO update ui - story 3
                updateUI(displayStory: story3, topBtnAnswer: answer3a, botBtnAnswer: answer3b)
                currentStory = 3
            } else if sender.tag == 2 {
                print("you selected bottom button!")
                //TODO update ui - story 4
                updateUI(displayStory: story4, topBtnAnswer: "-", botBtnAnswer: "-")
                currentStory = 4
            }
            break
        case 3:
            if sender.tag == 1 {
                print("You selected top button!")
                updateUI(displayStory: story6, topBtnAnswer: "-", botBtnAnswer: "-")
                currentStory = 6
            } else if sender.tag == 2 {
                print("You selected bottom button!")
                updateUI(displayStory: story5, topBtnAnswer: "-", botBtnAnswer: "-")
                currentStory = 5
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
    }
    



}


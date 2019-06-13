//
//  Story.swift
//  Destini
//
//  Created by Jake Stanger on 6/13/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Story {
    var storyText: String
    var answerA: String
    var answerB: String
    
    init() {
        storyText = ""
        answerA = ""
        answerB = ""
    }
    
    init(story: String, ansA: String, ansB: String) {
        storyText = story
        answerA = ansA
        answerB = ansB
    }
}

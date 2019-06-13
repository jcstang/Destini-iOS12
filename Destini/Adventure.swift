//
//  Adventure.swift
//  Destini
//
//  Created by Jake Stanger on 6/13/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Adventure {
    var storyList: Array<Story>
    var currentStoryIndex: Int

    init() {
        let someStory: Story = Story()
        storyList = Array()
        currentStoryIndex = 0
        storyList.append(someStory)
    }
    
    init(newStory: Story) {
        storyList = Array()
        currentStoryIndex = 0
        storyList.append(newStory)
    }
    
    func add(newStory: Story) {
        storyList.append(newStory)
    }
    
    func storyIndexAt(num: Int) -> Story {
        var returnStory = Story()
        try returnStory = storyList[num]
        currentStoryIndex = num
        
        return returnStory
    }
    
}

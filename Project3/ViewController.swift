//
//  ViewController.swift
//  Project3
//  Created by Shilpa Racham on 5/21/19.
//  Copyright © 2019 Shilpa Racham. All rights reserved.


import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
   
    let futurePrompts = ["What do you want to do 1 year from now?",
                         "What is your dream holiday to visit in next few months?",
                         "Where do you want to see yourself in next year?",
                         "What's one thing you want to change in near future?",
                         "Where do you want to celebrate your next birthday?",
                         "What do you want to do if you get a break next week?",
                         "What do you want to see in your job a couple of months from now?"]
    let pastPrompts = ["Describe your day 10 days ago",
                   "Tell about your holiday last year",
                   "Best memories from previous trip ",
                   "Talk about any thing in the past that inspired you",
                   "Movie you watched 10 days ago","Whats the wackiest gift you received recently",
                   "Explain the embarassing moments you experienced a couple of days ago"]
    
    //Label to display the prompts
    @IBOutlet weak var displayTask: UILabel!
    //Prompts for future tasks
    @IBAction func futureTask(_ sender: UIButton) {
        let random = futurePrompts[Int.random(in: 0 ... futurePrompts.count-1)]
        displayTask.text = random
        
    }
    //Prompts for past experience
    @IBAction func pastTask(_ sender: UIButton) {
        let random = pastPrompts[Int.random(in: 0 ... pastPrompts.count-1)]
        displayTask.text = random
    }
//Random number to pick who's turn it is
    @IBAction func nextTurn(_ sender: UIButton) {
        displayTask.text = String(Int.random(in: 1 ... 10))
        print("next turn")
    }
}


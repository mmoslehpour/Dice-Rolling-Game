//
//  ViewController.swift
//  Diceee
//
//  Created by Mina Moslehpour on 8/2/19.
//  Copyright © 2019 Mina Moslehpour. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // create an array to stored all dice pictures
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    // declare variable dice1 and dice2
    var randomDice1: Int = 0
    var randomDice2: Int = 0
    
    // drag picture by holding control
    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateDice()
    }
    
    @IBAction func rollBottom(_ sender: UIButton) {
        updateDice()
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
    func updateDice() {
        // set dice1 and dice2 to random number from 0-5
        randomDice1 = Int.random(in: 0 ... 5)
        randomDice2 = Int.random(in: 0 ... 5)
        
        // test printing result of randomDice1
      //  print(randomDice1)
        
        //
        diceImage1.image = UIImage(named: diceArray[randomDice1])
        diceImage2.image = UIImage(named: diceArray[randomDice2])
    }
    
}


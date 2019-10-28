//
//  ViewController.swift
//  ThreeCardMonte
//
//  Created by Alex Paul on 11/5/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
  @IBOutlet weak var displayLabel: UILabel!

    
    @IBOutlet weak var card0: UIButton!
    
    @IBOutlet weak var card1: UIButton!
    
    @IBOutlet weak var card12: UIButton!
    
    override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }
    @IBAction func newGame(_ sender: UIButton) {
           displayLabel.text = "Pick a card, any card"
        
        card0.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card1.setImage(UIImage(named: "cardBackRed"), for: .normal)
        card12.setImage(UIImage(named: "cardBackRed"), for: .normal)
        
        card0.isEnabled = true
        card1.isEnabled = true
        card12.isEnabled = true
           
       }

    
    @IBAction func pickingCard(_ sender: UIButton) {
        
         var randomNum = Int.random(in: 0...2)
        if sender.tag == randomNum {
           sender.setImage(UIImage(named: "kingCard"), for: .normal)
            displayLabel.text = "you win"
        } else {
            sender.setImage(UIImage(named: "threeCard"), for: .normal)
            displayLabel.text = "you lose"
        }
        card0.isEnabled = false
        card1.isEnabled = false
        card12.isEnabled = false
    }
    

    
   
    
}

    



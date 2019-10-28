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
    
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

    @IBAction func pickingCard(_ sender: UIButton) {
        var isEnabled: Bool
         var randomNum = Int.random(in: 0...2)
        if sender.tag == randomNum {
           sender.setImage(UIImage(named: "kingCard"), for: .normal)
            displayLabel.text = "you win"
        } else {
            sender.setImage(UIImage(named: "threeCard"), for: .normal)
        }
    }

    
    @IBAction func newGame(_ sender: UIButton) {
        displayLabel.text = "Pick a card, any card"
        
    }
    
}

    



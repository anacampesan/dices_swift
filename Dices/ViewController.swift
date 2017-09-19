//
//  ViewController.swift
//  Dices
//
//  Created by Ana Raquel Campesan on 2017-09-18.
//  Copyright © 2017 Ana Raquel Campesan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    var diceSprites: [String]
    
    required init?(coder aDecoder: NSCoder) {
        self.diceSprites = []
        for i in 1...6 {
            self.diceSprites.append(String(i))
        }
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.background.layer.zPosition = -1
        print(self.diceSprites)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func push(_ sender: Any) {
        rollDice()
    }
    
    func rollDice() {
        let index1 = Int(arc4random_uniform(6))
        let index2 = Int(arc4random_uniform(6))
        self.dice1.image = UIImage(named: self.diceSprites[index1])
        self.dice2.image = UIImage(named: self.diceSprites[index2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        rollDice()
    }
}


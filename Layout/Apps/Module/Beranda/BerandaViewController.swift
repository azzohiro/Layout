//
//  BerandaViewController.swift
//  Layout
//
//  Created by Azzo Hiro on 26/05/22.
//

import UIKit

class BerandaViewController: DataViewController {
    
    @IBOutlet weak var DiceImage2: UIImageView!
    @IBOutlet weak var DiceImage1: UIImageView!
    //    var berandaValue = "Hello"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func pencetPressed(_ sender: UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func tombolRoll(_ sender: UIButton) {
        let daduArray = [
            #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix"),
        ]
        DiceImage1.image = daduArray[Int.random(in: 0...5)]
        DiceImage2.image = daduArray[Int.random(in: 0...5)]
    }
}

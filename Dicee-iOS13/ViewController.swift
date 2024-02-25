//
//  ViewController.swift
//  Dicee-iOS13
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImages = [UIImage(imageLiteralResourceName: "DiceOne"), UIImage(imageLiteralResourceName: "DiceTwo"), UIImage(imageLiteralResourceName: "DiceThree"), UIImage(imageLiteralResourceName: "DiceFour"), UIImage(imageLiteralResourceName: "DiceFive"), UIImage(imageLiteralResourceName: "DiceSix")]
    
    var diceIndexOne = 5
    var diceIndexTwo = 5
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Start the app at this positions
        diceImageView1.image = diceImages[diceIndexOne]
        diceImageView2.image = diceImages[diceIndexTwo]
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        
        // Randomize the image indexes
        diceIndexOne = Int.random(in: 0...5)
        diceIndexTwo = Int.random(in: 0...5)
        
        // Changes the image for the Image 1
        diceImageView1.image = diceImages[diceIndexOne]
        
        // Changes the image for the Image 2
        diceImageView2.image = diceImages[diceIndexTwo]
        
    }
    
}


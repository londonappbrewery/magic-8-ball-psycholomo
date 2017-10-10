//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by onji on 10/9/17.
//  Copyright © 2017 itnaught. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var listOfAnswers = ["ball1","ball2","ball3","ball4","ball5"]
    @IBOutlet weak var eightBallUI: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        changeEightBall()
    }

    @IBAction func changeUIButton(_ sender: UIButton) {
        changeEightBall()
    }
    func changeEightBall(){
        let randomNumber = Int(arc4random_uniform(5))
        eightBallUI.image = UIImage.init(named: listOfAnswers[randomNumber])
        
    }
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
     changeEightBall()
    }
}


//
//  ViewController.swift
//  l4
//
//  Created by Mayank Rawat on 12/10/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftimageview: UIImageView!
    @IBOutlet weak var rightimageview: UIImageView!
    @IBOutlet weak var playerscore: UILabel!
    @IBOutlet weak var CPUscore: UILabel!
    var pscore = 0
    var cscore = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func deal(_ sender: Any) {
        //randomize numbers
        let leftnumber = Int.random(in: 2...14)
        let rightnumber = Int.random(in: 2...14)
        //updating image views
        leftimageview.image = UIImage(named: "card\(leftnumber)")
        rightimageview.image = UIImage(named: "card\(rightnumber)")
        //logic for scoring
        if leftnumber > rightnumber{
            //player wins
            pscore += 1
            playerscore.text = String(pscore)
        }
        else if rightnumber > leftnumber{
            //CPU wins
            cscore += 1
            CPUscore.text = String(cscore)
        }
        else{
            //Tie
        }
        
    }
    
}


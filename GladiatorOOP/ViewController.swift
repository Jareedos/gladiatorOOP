//
//  ViewController.swift
//  GladiatorOOP
//
//  Created by Jared Sobol on 4/15/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var orcImg: UIImageView!
    
    @IBOutlet weak var knightImg: UIImageView!
    
    @IBOutlet weak var gameTxtLbl: UIImageView!
    
    @IBOutlet weak var orcAttackBtn: UIButton!
    
    @IBOutlet weak var knightAttackBtn: UIButton!
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    @IBOutlet weak var winnersTxtLbl: UILabel!

    @IBAction func onOrcBtnPressed(sender: AnyObject) {
    }
    
    @IBAction func onKnightBtnPressed(sender: AnyObject) {
    }
    
    var orc: Orc!
    var knight: Knight!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        orc = Orc(name: "Orc", hp: 100)
        knight = Knight(name: "Knight", hp:100)
       
    }



}


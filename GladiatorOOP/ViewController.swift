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
    
 
    @IBOutlet weak var gameTxtLbl: UILabel!
    
    @IBOutlet weak var orcAttackBtn: UIButton!
    
    @IBOutlet weak var knightAttackBtn: UIButton!
    
    @IBOutlet weak var playAgainBtn: UIButton!
    
    @IBOutlet weak var winnersTxtLbl: UILabel!
    
    var orc: Orc!
    var knight: Knight!
    var currentAttackPwr = 0
    
    func enableOrcBtn() {
        orcAttackBtn.enabled = true
    }
    
    func enableKnightBtn() {
        knightAttackBtn.enabled = true
    }
    
    func gameOverView() {
        orcImg.hidden = true
        knightImg.hidden = true
        orcAttackBtn.hidden = true
        knightAttackBtn.hidden = true
        winnersTxtLbl.hidden = true
        playAgainBtn.hidden = false
    }
    
    

    
    @IBAction func onOrcBtnPressed(sender: AnyObject) {
        orcAttackBtn.enabled = false
        
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.enableOrcBtn), userInfo: nil, repeats: false)
        
        if knight.isAlive {
            currentAttackPwr = orc.randomattackPwr(10, max: 25)
            knight.hp -= currentAttackPwr
            gameTxtLbl.text = "Orc hits the Knight for \(currentAttackPwr) damage!"
        }else{
            winnersTxtLbl.text = " The Orc Wins!!!!"
            winnersTxtLbl.hidden = false
             NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.gameOverView), userInfo: nil, repeats: false)
            
        }
    }

    @IBAction func onKnightBtnPressed(sender: AnyObject) {
    }
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        orc = Orc(name: "Orc", hp: 100)
        knight = Knight(name: "Knight", hp:100)
       
    }



}


//
//  player.swift
//  GladiatorOOP
//
//  Created by Jared Sobol on 4/15/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import Foundation


class Player {

    private var _hp: Int = 0
    private var _attackPwr: Int = 0
    private var _name: String = ""
    private var min = 10
    private var max = 20
    
    var hp: Int {
        get{
            return _hp
        }
    
    }
    
    var attackPwr: Int {
        get {
            return _attackPwr
        }
    }

    init ( startingHp: Int, startingAttckPwr: Int, name: String){
        self._hp = startingHp
        self._attackPwr = startingAttckPwr
        self._name = name
    }
    
    var isAlive: Bool {
        get{
            if hp <= 0 {
                return false
            } else {
                return true 
            }
        }
    }
    
    func attack(min: Int, max:Int) -> Int {
            return min + Int(arc4random_uniform(UInt32(max - min + 1)))
        }
}
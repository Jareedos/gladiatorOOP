//
//  orc.swift
//  GladiatorOOP
//
//  Created by Jared Sobol on 4/15/16.
//  Copyright © 2016 Appmaker. All rights reserved.
//

import Foundation

class Orc: Player {
    
    convenience init(name: String, hp: Int, attackPwr: Int){
        self.init(startingHp: hp, startingAttckPwr: attackPwr, name: name)
        
    }
    
}
